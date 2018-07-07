class Post < ApplicationRecord
  acts_as_belongable

  validates :content, presence: true
  validates :platform, presence: true
  validates :url, presence: true

  belongable :apps, 'App'
  belongable :repositories, 'Repository'
end
