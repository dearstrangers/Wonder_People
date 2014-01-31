json.array!(@cleaners_profiles) do |cleaners_profile|
  json.extract! cleaners_profile, :id, :nickname, :recent_photo, :description, :experience, :wonder_people_chat, :cleaner_id
  json.url cleaners_profile_url(cleaners_profile, format: :json)
end
