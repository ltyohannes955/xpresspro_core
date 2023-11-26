class AddColumnToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :weightcapacity, :integer, null: true
    add_column :vehicles, :sideview, :string, null: true
    add_column :vehicles, :backview, :string, null: true
    add_column :vehicles, :frontview, :string, null: true
    Vehicle.update_all(weightcapacity: 0)
    Vehicle.update_all(sideview: "default_side_url")
    Vehicle.update_all(backview: "default_back_url")
    Vehicle.update_all(frontview: "default_front_url")

    change_column_null :vehicles, :weightcapacity, false
    change_column_null :vehicles, :sideview, false
    change_column_null :vehicles, :frontview, false
    change_column_null :vehicles, :backview, false

  end
end
