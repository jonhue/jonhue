Rails.application.routes.draw do

    root 'welcome#index'

    match '*path', to: 'r404#not_found', via: :all

end
