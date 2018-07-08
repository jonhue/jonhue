# frozen_string_literal: true

class App < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_belonger

  validates :name, presence: true
  validates :description, presence: true

  belonger :features, 'Feature'
  belonger :posts, 'Post'
end
