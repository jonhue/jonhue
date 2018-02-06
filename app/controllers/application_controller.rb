class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception, prepend: true

    before_action :set_raven_context

    include R404Renderer
    rescue_from ActiveRecord::RecordNotFound, AbstractController::ActionNotFound, ActionController::RoutingError do |exception|
        render_r404 :not_found, 404, exception
    end


    private


    def set_raven_context
        Raven.extra_context params: params.to_unsafe_h, url: request.url
    end

end
