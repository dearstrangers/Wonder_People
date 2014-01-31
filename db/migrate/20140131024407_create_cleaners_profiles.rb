class CreateCleanersProfiles < ActiveRecord::Migration
  def change
    create_table :cleaners_profiles do |t|
      t.string :nickname
      t.string :recent_photo
      t.string :description
      t.string :experience
      t.string :wonder_people_chat
      t.integer :cleaner_id

      t.timestamps
    end
    add_index :cleaners_profiles, :cleaner_id
  end
end
