# frozen_string_literal: true

class Feature < ApplicationData
  active_data prohibit_writes: true, explicit_ids: false, permit_attributes: [:title, :content]

  attr_accessor :title, :content

  belongs_to :featureable, polymorphic: true

  validates :title, presence: true
  validates :content, presence: true
end
