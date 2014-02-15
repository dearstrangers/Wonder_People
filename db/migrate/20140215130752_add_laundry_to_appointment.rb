class AddLaundryToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :laundry, :boolean
    add_column :appointments, :fridge, :boolean
    add_column :appointments, :oven, :boolean
    add_column :appointments, :cabinets, :boolean
    add_column :appointments, :windows, :boolean
    add_column :appointments, :walls, :boolean
  end
end
