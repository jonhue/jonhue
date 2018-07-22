# frozen_string_literal: true

class RepositoriesController < ApplicationController
  before_action :set_repository

  def show
    turbolinks_animate 'fadein'
    @features = @repository.features
  end

  private

  def set_repository
    @repository = Repository.find_by(name: params[:name])
    @readme = @repository.content
  end
end
