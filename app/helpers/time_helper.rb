# frozen_string_literal: true

module TimeHelper
  def updated_time_ago(datetime)
    "Updated #{time_ago_in_words(datetime)} ago"
  end
end
