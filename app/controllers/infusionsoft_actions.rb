def initialize_infusionsoft(appname, apikey)

	Infusionsoft.configure do |config|
		config.api_url = "#{appname}.infusionsoft.com"
		config.api_key = apikey
		config.api_logger = Logger.new("#{Rails.root}/log/infusionsoft_api.log")
	end

end

def get_table(tablename,fields=[],criteria={})
	lookup_fields = []
	lookup_fields += fields == [] ? FIELDS["#{tablename}"] : fields
	table = []
	page_index = 0
	while true do
		table_page = Infusionsoft.data_query(tablename,1000,page_index,criteria,lookup_fields)
		table += table_page
		break if table_page.length < 1000
		page_index += 1
	end
	p "#{tablename} table returned #{table.length} records"
	table
end

def create_custom_field(fieldname,headerid=0,tablename='Contact',fieldtype='Text')

	#Check to see if custom field exists
	existing_field = Infusionsoft.data_query('DataFormField',1000,0,{ 'Label' => "#{fieldname}" },['Id','FormId'])
	field_exists = false
	unless existing_field == []
		existing_field.each do |field|
			field_exists = true if field['FormId'] == CUSTOM_FIELD_FORM_ID.key(tablename)
		end
	end

	#gets first headerid if headerid isn't passed, else sets custom_field_header_id to passed value
	#headerid == 0 ? custom_field_header_id = get_table('DataFormGroup')[0]['Id'] : custom_field_header_id = headerid
	if headerid == 0
		tabid = Infusionsoft.data_query('DataFormTab',1000,0,{'FormId' => CUSTOM_FIELD_FORM_ID.key(tablename)},FIELDS['DataFormTab'])[0]['Id']
		headerid = Infusionsoft.data_query('DataFormGroup',1000,0,{'TabId' => tabid},FIELDS['DataFormGroup'])[0]['Id']
	end

	#creates custom field if it doesn't exist
	Infusionsoft.data_add_custom_field(tablename,fieldname,fieldtype,headerid) unless field_exists

	#Returns Database Name of Custom Field
	"_" + Infusionsoft.data_query('DataFormField',1000,0,{ 'Label' => "#{fieldname}", 'FormId' => CUSTOM_FIELD_FORM_ID.key(tablename)},['Name'])[0]['Name']

end

def create_user_relationship(source_app_users,dest_app_users)

	relationships = {0=>0}
	source_app_users.each do |src_user|
		dest_app_users.each do |dest_user|
			relationships[src_user['Id']] = dest_user['Id'] if src_user['GlobalUserId'] == dest_user['GlobalUserId']
		end
	end
	relationships

end

def delete_table(tablename)
	puts "Deleting #{tablename} table..."
	get_table(tablename).each do |row|
		Infusionsoft.data_delete(tablename,row['Id'])
	end
	puts "#{tablename} table deleted."
end
