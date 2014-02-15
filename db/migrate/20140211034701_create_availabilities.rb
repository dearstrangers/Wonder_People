class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :area
      t.string :date
      t.string :time
      t.string :cleaner_id
      t.string :state

      t.timestamps
    end
    add_index :availabilities, :cleaner_id
  end
end
