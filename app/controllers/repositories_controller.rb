class RepositoriesController < ApplicationController

    before_action :set_repository

    def show
        turbolinks_animate 'fadein'
    end

    private

    def set_repository
        @repository = Repository.friendly.find params[:id]
        @readme = @repository.content
    end

end
