class CreateKrindlePicks < ActiveRecord::Migration
  def change
    create_table :krindle_picks do |t|
      t.belongs_to :krindle
    	t.belongs_to :user
      t.timestamps
    end
  end
end
