class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :comment
      t.integer :review_id
      t.string :image_url
      t.string :caption

      t.timestamps

    end
  end
end
