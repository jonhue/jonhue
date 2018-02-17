Rails.application.routes.draw do

    mount Pwa::Engine, at: ''

    get 'contact', to: 'welcome#contact'
    get 'privacy', to: 'welcome#privacy'

    get 'repos/:id', to: 'repositories#show'
    get ':id', to: 'apps#show'

    root 'welcome#index'

    match '*path', to: 'r404#not_found', via: :all

end
