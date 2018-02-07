Rails.application.routes.draw do

    get 'contact', to: 'welcome#contact'

    get 'repos/:id', to: 'repositories#show'
    get ':id', to: 'apps#show'

    root 'welcome#index'

    match '*path', to: 'r404#not_found', via: :all

end
