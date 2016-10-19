class AddAttachmentProfilePicToSpeakers < ActiveRecord::Migration
  def self.up
    change_table :speakers do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :speakers, :profile_pic
  end
end
