class Event < ActiveRecord::Base

  has_attached_file :cover_image, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover_image, content_type: /\Aimage\/.*\z/

  has_many :speakers, dependent: :destroy

  def as_json(options)
    EventSerializer.new(self).as_json(root: false)
  end

end
