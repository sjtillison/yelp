class CreateDescriptors < ActiveRecord::Migration
  def change
    create_table :descriptors do |t|
      t.integer :tag_id
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
