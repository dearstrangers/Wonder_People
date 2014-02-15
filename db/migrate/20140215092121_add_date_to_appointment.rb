class AddDateToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :date, :string
  end
end
