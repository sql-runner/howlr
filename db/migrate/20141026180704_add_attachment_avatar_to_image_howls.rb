class AddAttachmentAvatarToImageHowls < ActiveRecord::Migration
  def self.up
    change_table :image_howls do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :image_howls, :avatar
  end
end
