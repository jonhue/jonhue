# frozen_string_literal: true

module LayoutsHelper
  def viewport_content
    'user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1'
  end

  def body_class
    'myg myg-layout myg-layout--toolbar ' +
      class_hierarchy([params[:controller].split('/'), action_name])
  end
end
