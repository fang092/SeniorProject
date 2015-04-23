class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :species
      t.string :element
      t.string :weakness
      t.string :info

      t.timestamps null: false
    end
  end
end
