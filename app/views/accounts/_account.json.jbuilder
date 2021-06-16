json.extract! account, :id, :username, :password, :emailid, :created_at, :updated_at
json.url account_url(account, format: :json)
