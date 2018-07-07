# frozen_string_literal: true

class Feature < ApplicationRecord
  acts_as_belongable

  belongable :apps, 'App'
  belongable :repositories, 'Repository'

  validates :title, presence: true
  validates :content, presence: true
end
