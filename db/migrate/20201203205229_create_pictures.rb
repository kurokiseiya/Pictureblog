class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :picture
      t.string :image_id
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
