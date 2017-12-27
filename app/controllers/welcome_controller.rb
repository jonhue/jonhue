class WelcomeController < ApplicationController

    include TurbolinksAnimateHelper

    def index
        turbolinks_animate 'fadein'
    end

end
