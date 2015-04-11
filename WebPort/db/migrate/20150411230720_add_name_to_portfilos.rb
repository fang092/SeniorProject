class AddNameToPortfilos < ActiveRecord::Migration
  def change
    add_column :portfilos, :name, :string
  end
end
