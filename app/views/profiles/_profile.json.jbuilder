json.extract! profile, :id, :email_address, :age, :gender, :created_at, :updated_at
json.url profile_url(profile, format: :json)
