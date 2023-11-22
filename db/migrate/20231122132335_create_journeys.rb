class CreateJourneys < ActiveRecord::Migration[7.0]
  def change
    create_table :journeys do |t|
      t.string :origin, null: false
      t.string :destination, null: false
      t.date :Departure_Date, null: false
      t.time :Departure_time, null: false
      t.string :list_of_Sightseeing, array: true, default: [], null: false
      t.string :status, default: Journey::PENDING
      t.references :user, null: false
      t.references :vehicle, null: false
      t.references :driver, null: false

      t.timestamps
    end
  end
end
