class CreateTableKrindlesUsers < ActiveRecord::Migration
  def change
    create_table :krindles_users do |t|
    	t.belongs_to :krindle
    	t.belongs_to :user
    	t.boolean :selected
    end
  end
end
