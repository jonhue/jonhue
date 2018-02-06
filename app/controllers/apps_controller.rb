class AppsController < ApplicationController

    before_action :set_app

    def show
    end

    private

    def set_app
        @app = App.friendly.find params[:id]
    end

end
