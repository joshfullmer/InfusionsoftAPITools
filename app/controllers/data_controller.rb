require 'csv'
require 'fileutils'
require_relative 'infusionsoft_actions'
require_relative 'field_arrays'

class DataController < ApplicationController

  def all_records

    #Generate list of all Infusionsoft tables to create dropdown for user input
    #Key is added twice, once for the value of the option, twice for the name of the selection (for ease of use in Rails)
    @tables = []
    FIELDS.each do |key,value|
      table = []
      table << key
      table << key
      @tables << table
    end

  end

  def get_records
    #Store the user input table name in @tablename for display on the view
    @tablename = params[:tablename]
    @appname = params[:appname]

    #Initializes Infusionsoft instance
    initialize_infusionsoft(params[:appname], params[:apikey])

    #get custom field names if they exist
    custom_fields = []
    p CUSTOM_FIELD_FORM_ID.key(@tablename)
    if CUSTOM_FIELD_FORM_ID.key(@tablename)
      listofcustomfields = get_table('DataFormField')
      listofcustomfields.each do |field|
        custom_fields << ('_' + field['Name']) if field['FormId'] == CUSTOM_FIELD_FORM_ID.key(@tablename)
      end
    end

    #Stores all of the data in array called @data for display on the view
    @fields = FIELDS[@tablename].clone + custom_fields
    id_numbers = params[:idnumbers].split(/\s*,\s*/).select{|i| Integer(i) rescue false}.map(&:to_i)
    if id_numbers.empty? 
      @data = get_table(params[:tablename],@fields)
    else
      p id_numbers
      @data = []
      id_numbers.each do |i|
        @data += get_table(params[:tablename],@fields,{Id: i})
      end
      p @data
    end

    #creates a CSV, and stores it in the public folder for download
    if params[:csv]
      FileUtils::mkdir_p "#{Rails.root}/public/#{params[:appname]}"
      CSV.open("#{Rails.root}/public/#{params[:appname]}/#{params[:tablename]}.csv","wb") do |csv|
        csv << @fields
        @data.each do |row|
          p row
          row.each do |key,value|
            row[key] = value.to_time.to_s if value.is_a? XMLRPC::DateTime
          end
          row_to_add = {}
          @fields.each do |header|
            row[header].nil? ? row_to_add[header] = '' : row_to_add[header] = row[header]
          end
          csv << row_to_add.values.map{|v| v.to_s.force_encoding('iso-8859-1').encode('utf-8')}
        end
      end
    end


  end

end
