class RemoveLaundryFromAppointment < ActiveRecord::Migration
  def change
    remove_column :appointments, :laundry, :boolean
    remove_column :appointments, :fridge, :boolean
    remove_column :appointments, :oven, :boolean
    remove_column :appointments, :cabinets, :boolean
    remove_column :appointments, :windows, :boolean
    remove_column :appointments, :walls, :boolean
  end
end
