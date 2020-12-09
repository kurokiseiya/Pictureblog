class AddDetailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :like, :text
    add_column :users, :can, :text
    add_column :users, :profile_image_id, :string
    add_column :users, :show_image_id, :string
    add_column :users, :active_image_id, :string
    add_column :users, :show_title, :string
    add_column :users, :active_title, :string
    add_column :users, :show_body, :text
    add_column :users, :active_body, :text
  end
end
