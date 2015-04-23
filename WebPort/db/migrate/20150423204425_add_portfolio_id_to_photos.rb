class AddPortfolioIdToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :portfolio_id, :integer
    add_index  :photos, :portfolio_id
  end
end
