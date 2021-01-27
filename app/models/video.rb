class Video < ApplicationRecord
    belongs_to :user
    belongs_to :city
    has_many :comments

    def uploader
        self.user.name
    end
    
    # def ordered_comments
    #     self.comments.order(:id)
    # end

end
