class CreateKrindles < ActiveRecord::Migration
  def change
    create_table :krindles do |t|

      t.timestamps
    end
  end
end
