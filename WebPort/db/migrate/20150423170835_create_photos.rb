class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :info

      t.timestamps null: false
    end
    
  end
end
