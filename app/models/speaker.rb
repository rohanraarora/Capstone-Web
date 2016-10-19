class Speaker < ActiveRecord::Base

  has_attached_file :profile_pic, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\z/

  belongs_to :event

  def as_json()
    SpeakerSerializer.new(self).as_json(root: false)
  end
end
