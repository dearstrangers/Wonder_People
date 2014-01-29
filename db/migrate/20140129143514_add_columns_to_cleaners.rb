class AddColumnsToCleaners < ActiveRecord::Migration
  def change
    add_column :cleaners, :username, :string
    add_index :cleaners, :username
    add_column :cleaners, :full_name, :string
    add_index :cleaners, :full_name
    add_column :cleaners, :contact_number, :integer
    add_column :cleaners, :address, :string
    add_column :cleaners, :approval_process_id, :integer
    add_index :cleaners, :approval_process_id
    add_column :cleaners, :profile_id, :integer
    add_index :cleaners, :profile_id
    add_column :cleaners, :preference_id, :integer
    add_index :cleaners, :preference_id
  end
end
