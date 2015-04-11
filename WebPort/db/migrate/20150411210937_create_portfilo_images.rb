class CreatePortfiloImages < ActiveRecord::Migration
  def change
    create_table :portfilo_images do |t|
      t.string :name
      t.integer :portfilo_id

      t.timestamps null: false
    end
  end
end
