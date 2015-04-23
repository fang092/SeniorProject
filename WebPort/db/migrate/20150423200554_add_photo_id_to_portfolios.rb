class AddPhotoIdToPortfolios < ActiveRecord::Migration
  def change
  	add_column :portfolios, :photo_id, :integer
    add_index  :portfolios, :photo_id
  end
end
