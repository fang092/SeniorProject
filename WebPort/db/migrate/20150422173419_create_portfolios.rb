class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :info
      t.string :links
      t.string :content

      t.timestamps null: false
    end
  end
end
