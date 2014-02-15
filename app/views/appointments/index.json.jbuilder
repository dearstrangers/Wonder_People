json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :address, :duration, :supplies, :extra_tasks, :size, :rooms, :bathrooms, :pets, :number_of_cleaners, :client_contact_number, :client_whatsapp_number, :client_email, :member_id, :availability_id, :flat_photo, :payment, :state, :payment_state
  json.url appointment_url(appointment, format: :json)
end
