class AddPortfolioIdToPdfs < ActiveRecord::Migration
  def change
  	add_column :pdfs, :portfolio_id, :integer
    add_index  :pdfs, :portfolio_id
  end
end
