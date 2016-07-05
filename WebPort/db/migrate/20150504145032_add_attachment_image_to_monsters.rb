class AddAttachmentImageToMonsters < ActiveRecord::Migration
  def self.up
    change_table :monsters do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :monsters, :image
  end
end
