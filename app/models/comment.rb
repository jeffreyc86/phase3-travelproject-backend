class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :video

    def author
        self.user.name
    end

end
