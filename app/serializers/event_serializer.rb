class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :from_timestamp, :to_timestamp, :ticket_url, :ticker_price, :venue_title, :venue_lat, :venue_long, :cover_image_url, :speakers


  def from_timestamp
    object.from_datetime.to_i
  end

  def to_timestamp
    object.to_datetime.to_i
  end

  def cover_image_url
    object.cover_image.url
  end

end
