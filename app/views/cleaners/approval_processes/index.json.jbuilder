json.array!(@cleaners_approval_processes) do |cleaners_approval_process|
  json.extract! cleaners_approval_process, :id, :approval_status, :approval_date, :approved_by, :background_check, :address_proof_photo, :id_copy_photo, :cleaner_id
  json.url cleaners_approval_process_url(cleaners_approval_process, format: :json)
end
