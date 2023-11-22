class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :driver_name, null: false
      t.integer :phone_number, null: false
      t.string :email, null: false
      t.string :status, null: false
      t.string :language, null: false
      t.timestamps
    end
  end
end
