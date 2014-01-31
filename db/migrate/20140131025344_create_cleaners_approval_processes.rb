class CreateCleanersApprovalProcesses < ActiveRecord::Migration
  def change
    create_table :cleaners_approval_processes do |t|
      t.string :approval_status
      t.string :approval_date
      t.string :approved_by
      t.boolean :background_check
      t.string :address_proof_photo
      t.string :id_copy_photo
      t.integer :cleaner_id

      t.timestamps
    end
    add_index :cleaners_approval_processes, :approval_status
    add_index :cleaners_approval_processes, :approval_date
    add_index :cleaners_approval_processes, :approved_by
    add_index :cleaners_approval_processes, :cleaner_id
  end
end
