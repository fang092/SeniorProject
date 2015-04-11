class AddAttachmentImageToPortfiloImages < ActiveRecord::Migration
  def self.up
    change_table :portfilo_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :portfilo_images, :image
  end
end
