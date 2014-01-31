json.array!(@cleaners_preferences) do |cleaners_preference|
  json.extract! cleaners_preference, :id, :preferred_time, :preferred_area, :pet_preference, :other_preference, :cleaner_id
  json.url cleaners_preference_url(cleaners_preference, format: :json)
end
