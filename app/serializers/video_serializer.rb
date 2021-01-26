class VideoSerializer < ActiveModel::Serializer
  attributes :id, :city_id, :user_id, :title, :category, :video_url, :likes, :uploader
  
  has_many :comments
end
