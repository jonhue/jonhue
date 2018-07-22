# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    turbolinks_animate 'fadein'
    @apps = App.all.sort_by(&:released_at)
    @repositories = Repository.all.sort_by(&:updated_at)
  end

  def contact
    turbolinks_animate 'fadein'
  end
end
