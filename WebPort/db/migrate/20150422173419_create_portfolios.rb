class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :info
      t.string :links
      t.string :content

      t.timestamps null: false
    end
    add_index :portfolios, [:user_id, :created_at]
  end
end
