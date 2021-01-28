class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :videos

  has_many :comments

  def videos
    self.object.videos.order(:id).map do |video| 
      {id: video.id, city_id: video.city_id, city: video.city.name, user_id: video.user_id, title: video.title, category: video.category, video_url: video.video_url, likes: video.likes}
    end
  end

end
