json.array!(@cleaner_applications) do |cleaner_application|
  json.extract! cleaner_application, :id, :applicant_legal_name, :applicant_area, :applicant_email, :applicant_contact_number, :interview_time
  json.url cleaner_application_url(cleaner_application, format: :json)
end
