class CreateCleanersPreferences < ActiveRecord::Migration
  def change
    create_table :cleaners_preferences do |t|
      t.string :preferred_time
      t.string :preferred_area
      t.string :pet_preference
      t.string :other_preference
      t.integer :cleaner_id

      t.timestamps
    end
    add_index :cleaners_preferences, :preferred_time
    add_index :cleaners_preferences, :preferred_area
    add_index :cleaners_preferences, :pet_preference
    add_index :cleaners_preferences, :cleaner_id
  end
end
