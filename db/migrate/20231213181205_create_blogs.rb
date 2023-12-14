class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :comment, null: false
      t.integer :stars, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
