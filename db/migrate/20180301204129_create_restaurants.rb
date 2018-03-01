class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :neighborhood_id
      t.string :city
      t.integer :total_stars
      t.string :description
      t.time :hours
      t.string :website
      t.integer :number_reviews

      t.timestamps

    end
  end
end
