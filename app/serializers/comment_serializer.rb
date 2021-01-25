class CommentSerializer < ActiveModel::Serializer
  attributes :id, :video_id, :user_id, :comment
  
end
