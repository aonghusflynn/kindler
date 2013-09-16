class CreateKrindlers < ActiveRecord::Migration
  def change
    create_table :krindlers do |t|
    	t.belongs_to :krindle
    	t.belongs_to :user
    	t.boolean :is_using
    	t.datetime :last_login
      t.timestamps
    end
  end
end
