class SpeakerSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :profile_url, :profile_pic_url

  def profile_pic_url
    object.profile_pic.url
  end
end
