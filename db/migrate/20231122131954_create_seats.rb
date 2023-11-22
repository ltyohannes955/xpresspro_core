class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.string :seat_name, null: false
      t.string :seat_description, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
