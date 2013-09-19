class AddSelectedColumn < ActiveRecord::Migration
  def change
  	add_column :krindlers, :selected, :string
  end
end
