class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.text :comment_body
      t.string :comment_name
      t.integer :picture_id

      t.timestamps
    end
  end
end
