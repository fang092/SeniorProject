class AddPdfIdToPortfolios < ActiveRecord::Migration
  def change
  	add_column :portfolios, :pdf_id, :integer
    add_index  :portfolios, :pdf_id
  end
end
