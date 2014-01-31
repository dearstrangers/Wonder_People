class RenameDatabaseColumn < ActiveRecord::Migration
  def change
  	rename_column :cleaners, :approval_process_id, :cleaners_approval_process_id
  	rename_column :cleaners, :profile_id, :cleaners_profile_id
  	rename_column :cleaners, :preference_id, :cleaners_preference_id
  end
end
