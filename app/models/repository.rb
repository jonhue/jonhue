# frozen_string_literal: true

class Repository < ApplicationData
  active_data prohibit_writes: true, permit_attributes: [:logo, :name, :description, :language, :url, :github, :demo, :rubygems, :npm, :todo, :wiki, :issues, :open_issues, :stars, :watchers, :discontinued]

  attr_accessor :logo, :name, :description, :language, :url, :github, :demo, :rubygems, :npm, :todo, :wiki, :issues, :open_issues, :stars, :watchers, :discontinued

  has_many :features, as: :featureable

  validates :name, presence: true
  validates :description, presence: true
  validates :github, presence: true

  def content
    Octokit.contents(
      github.gsub('https://github.com/', ''),
      path: 'README.md',
      accept: 'application/vnd.github.v3.html'
    ).force_encoding('UTF-8').html_safe
  end

  def discontinued
    @discontinued || false
  end
end
