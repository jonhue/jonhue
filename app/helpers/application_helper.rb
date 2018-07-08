# frozen_string_literal: true

module ApplicationHelper
  def class_hierarchy(options = [], delimiter = ' ')
    options.map(&:inspect).join(delimiter).delete('",[]')
  end

  def description
    'A student, a dangerously passionate open-source developer, an engineer'\
    'adoring user-oriented and innovative design.'
  end
end
