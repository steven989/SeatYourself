class UpdateRestaurantTableWithMoreColumns < ActiveRecord::Migration
  def change
    add_column :restaurants, :description, :text
    add_column :restaurants, :display_image_url, :string
    add_column :restaurants, :location, :string
    add_column :restaurants, :cuisine, :string
    add_column :restaurants, :address, :string
    add_column :restaurants, :rating, :float

  end
end
