class News < ActiveRecord::Base

  has_attached_file :cover_image, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover_image, content_type: /\Aimage\/.*\z/

  def as_json(options)
    NewsSerializer.new(self).as_json(root: false)
  end


end
