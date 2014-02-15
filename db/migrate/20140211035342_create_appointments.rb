class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :address
      t.string :duration
      t.boolean :supplies
      t.string :extra_tasks
      t.integer :size
      t.integer :rooms
      t.integer :bathrooms
      t.string :pets
      t.integer :number_of_cleaners
      t.integer :client_contact_number
      t.integer :client_whatsapp_number
      t.string :client_email
      t.integer :member_id
      t.integer :availability_id
      t.string :flat_photo
      t.string :payment
      t.string :state
      t.string :payment_state

      t.timestamps
    end
  end
end
