class Post < ApplicationRecord

    validates :content, presence: true
    validates :platform, presence: true
    validates :url, presence: true

end
