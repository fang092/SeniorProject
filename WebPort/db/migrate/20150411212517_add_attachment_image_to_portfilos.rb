class AddAttachmentImageToPortfilos < ActiveRecord::Migration
  def self.up
    change_table :portfilos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :portfilos, :image
  end
end
