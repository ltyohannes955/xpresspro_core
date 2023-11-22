class CreateSightseeings < ActiveRecord::Migration[7.0]
  def change
    create_table :sightseeings do |t|
      t.string :location, null: false
      t.string :description, null: false
      t.integer :price_per_hour, null: false
      t.integer :time_spent, null: false
      t.timestamps
    end
  end
end
