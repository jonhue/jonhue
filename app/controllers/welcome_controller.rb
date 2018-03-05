class WelcomeController < ApplicationController

    def index
        turbolinks_animate 'fadein'
        @apps = App.all.order('released_at asc')
        @repositories = Repository.all.order('updated_at desc')
        @posts = Post.all.order(:created_at).limit(3)
    end

    def contact
        turbolinks_animate 'fadein'
    end

end
