class AddPortfolioIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :portfolio_id, :integer
    add_index  :users, :portfolio_id
  end
end
