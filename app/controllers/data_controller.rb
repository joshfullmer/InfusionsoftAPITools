require 'csv'
require 'fileutils'

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
    if CUSTOM_FIELD_FORM_ID_REVERSED[@tablename]
      listofcustomfields = get_table('DataFormField')
      listofcustomfields.each do |field|
        custom_fields << ('_' + field['Name']) if field['FormId'] == CUSTOM_FIELD_FORM_ID_REVERSED[@tablename]
      end
    end

    #Stores all of the data in array called @data for display on the view
    @fields = FIELDS[@tablename].clone + custom_fields
    @data = get_table(params[:tablename],@fields)

    #creates a CSV, and stores it in the public folder for download
    if params[:csv]
      FileUtils::mkdir_p "#{Rails.root}/public/#{params[:appname]}"
      CSV.open("#{Rails.root}/public/#{params[:appname]}/#{params[:tablename]}.csv","wb") do |csv|
        csv << @fields
        @data.each do |hash|
          hash.each do |key,value|
            hash[key] = value.to_time.to_s if value.is_a? XMLRPC::DateTime
          end
          real_hash = {}
          @fields.each do |header|
            hash[header].nil? ? real_hash[header] = '' : real_hash[header] = hash[header]
          end
          csv << real_hash.values.map{|v| v.to_s.force_encoding('iso-8859-1').encode('utf-8')}
        end
      end
    end


  end

end
