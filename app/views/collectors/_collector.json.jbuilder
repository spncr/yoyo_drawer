json.extract! collector, :id, :username, :email, :password, :password_confirmation, :created_at, :updated_at
json.url collector_url(collector, format: :json)
