class AddAttachmentBgimageToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :bgimage
    end
  end

  def self.down
    remove_attachment :users, :bgimage
  end
end
