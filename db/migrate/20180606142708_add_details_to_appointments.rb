class AddDetailsToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :what?, :string
    add_column :appointments, :when?, :datetime
  end
end
