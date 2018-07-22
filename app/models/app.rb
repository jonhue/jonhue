# frozen_string_literal: true

class App < ApplicationData
  active_data prohibit_writes: true, permit_attributes: [:logo, :name, :description, :beta, :url, :github, :android, :ios, :windows, :chrome, :todo, :wiki, :issues, :open_issues, :support, :released_at]

  attr_accessor :logo, :name, :description, :beta, :url, :github, :android, :ios, :windows, :chrome, :todo, :wiki, :issues, :open_issues, :support, :released_at

  has_many :features, as: :featureable

  validates :name, presence: true
  validates :description, presence: true
end
