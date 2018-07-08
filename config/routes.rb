# frozen_string_literal: true

Rails.application.routes.draw do
  mount Pwa::Engine, at: ''

  resources :repositories, path: 'repos', key: 'name', only: [:show]
  resources :apps, path: '', key: 'name', only: [:show] do
    get 'privacy', to: 'apps#privacy'
    get 'terms', to: 'apps#terms'
  end

  get 'contact', to: 'welcome#contact'
  root 'welcome#index'

  match '*path', to: 'r404#not_found', via: :all
end
