class CreateCleanerApplications < ActiveRecord::Migration
  def change
    create_table :cleaner_applications do |t|
      t.string :applicant_legal_name
      t.string :applicant_area
      t.string :applicant_email
      t.integer :applicant_contact_number
      t.string :interview_time

      t.timestamps
    end
    add_index :cleaner_applications, :applicant_legal_name
    add_index :cleaner_applications, :applicant_area
    add_index :cleaner_applications, :applicant_email
    add_index :cleaner_applications, :interview_time
  end
end
