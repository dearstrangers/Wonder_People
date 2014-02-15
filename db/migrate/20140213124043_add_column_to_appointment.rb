class AddColumnToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :district, :string
    add_column :appointments, :area, :string
  end
end
