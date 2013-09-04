class AddColumnsToKrindle < ActiveRecord::Migration
  def change
    add_column :krindles, :name, :string
    add_column :krindles, :message, :text
    add_column :krindles, :max_amount, :decimal
  end
end
