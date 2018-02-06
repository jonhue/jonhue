class RepositoriesController < ApplicationController

    before_action :set_repository

    def show
    end

    private

    def set_repository
        @repository = Repository.friendly.find params[:id]
    end

end
