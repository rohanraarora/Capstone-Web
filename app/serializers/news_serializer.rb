class NewsSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :url, :cover_image_url, :timestamp

  def cover_image_url
    object.cover_image.url
  end

  def timestamp
    object.created_at.to_i
  end

end
