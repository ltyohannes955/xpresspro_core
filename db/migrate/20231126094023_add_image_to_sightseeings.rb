class AddImageToSightseeings < ActiveRecord::Migration[7.0]
  def change
    add_column :sightseeings, :image, :string, null: true
    Sightseeing.update_all(image: 'default_image_url')
    change_column_null :sightseeings, :image, false
  end
end
