class AppsController < ApplicationController

    before_action :set_app

    def show
        turbolinks_animate 'fadein'
    end

    private

    def set_app
        @app = App.friendly.find params[:id]
    end

end