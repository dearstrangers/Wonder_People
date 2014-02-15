json.array!(@interests) do |interest|
  json.extract! interest, :id, :interest_name, :interest_email, :interest_contact_number, :interest_area
  json.url interest_url(interest, format: :json)
end
