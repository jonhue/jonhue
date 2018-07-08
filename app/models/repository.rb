# frozen_string_literal: true

class Repository < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  acts_as_belonger

  validates :name, presence: true
  validates :description, presence: true
  validates :github, presence: true

  belonger :features, 'Feature'
  belonger :posts, 'Post'

  def content
    Octokit.contents(
      github.gsub('https://github.com/', ''),
      path: 'README.md',
      accept: 'application/vnd.github.v3.html'
    ).force_encoding('UTF-8').html_safe
  end
end
