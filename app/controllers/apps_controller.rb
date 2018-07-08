# frozen_string_literal: true

class AppsController < ApplicationController
  before_action :set_app

  def show
    turbolinks_animate 'fadein'
    @features = @app.features
  end

  def terms
    turbolinks_animate 'fadein'
  end

  def privacy
    turbolinks_animate 'fadein'
  end

  private

  def set_app
    @app = App.find_by(name: params[:name])
  end
end
