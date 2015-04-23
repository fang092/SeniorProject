class AddAttachmentAttachmentToPdfs < ActiveRecord::Migration
  def self.up
    change_table :pdfs do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :pdfs, :attachment
  end
end
