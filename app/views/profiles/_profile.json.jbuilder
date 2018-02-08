json.extract! profile, :id, :phone_number, :email_address, :age, :gender, :created_at, :updated_at
json.url profile_url(profile, format: :json)
