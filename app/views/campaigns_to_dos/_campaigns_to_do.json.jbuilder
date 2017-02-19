json.extract! campaigns_to_do, :id, :Name, :Notes, :Marketo, :Salesforce, :DueDate, :created_at, :updated_at
json.url campaigns_to_do_url(campaigns_to_do, format: :json)