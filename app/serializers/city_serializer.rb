class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :continent, :description, :display_url, :static_url, :videos

  def videos
    self.object.videos.order(:id).map do |video| 
      {id: video.id, city_id: video.city_id, user_id: video.user_id, title: video.title, category: video.category, video_url: video.video_url, likes: video.likes}
    end
  end

end
