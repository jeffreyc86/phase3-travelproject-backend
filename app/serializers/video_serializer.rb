class VideoSerializer < ActiveModel::Serializer
  attributes :id, :city_id, :city, :user_id, :title, :category, :video_url, :likes, :uploader, :comments

  def comments
    self.object.comments.order(:id).map do |comment| 
      {id: comment.id, video_id: comment.video_id, user_id: comment.user_id, author: comment.author, comment: comment.comment}
    end
  end

  def city
    self.object.city.name
  end

end
