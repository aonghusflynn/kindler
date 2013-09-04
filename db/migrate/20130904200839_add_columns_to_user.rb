class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :email
    add_column :users, :likes, :text
    add_column :users, :picked, :boolean
    add_column :users, :logged_in, :boolean
  end
end
