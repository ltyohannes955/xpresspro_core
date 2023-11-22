class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_name, null: false
      t.string :vehicle_model, null: false
      t.integer :person_capacity, null: false
      t.integer :luggage_capacity, null: false
      t.integer :price_per_day, null: false
      t.timestamps
    end
  end
end
