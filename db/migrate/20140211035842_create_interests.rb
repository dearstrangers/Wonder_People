class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :interest_name
      t.string :interest_email
      t.integer :interest_contact_number
      t.string :interest_area

      t.timestamps
    end
  end
end
