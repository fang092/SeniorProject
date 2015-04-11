class CreatePortfilos < ActiveRecord::Migration
  def change
    create_table :portfilos do |t|
      t.string :name
      t.string :info

      t.timestamps null: false
    end
  end
end
