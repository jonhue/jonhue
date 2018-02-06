class Repository < ApplicationRecord

    extend FriendlyId
    friendly_id :name, use: :slugged
    acts_as_belonger

    validates :name, presence: true
    validates :description, presence: true
    validates :github, presence: true

    belonger :features, 'Feature'

end
