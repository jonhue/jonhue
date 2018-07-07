# frozen_string_literal: true

Rails.application.routes.draw do
  mount Pwa::Engine, at: ''

  get 'contact', to: 'welcome#contact'

  get 'repos/:id', to: 'repositories#show', as: :repository
  get ':id', to: 'apps#show', as: :app
  get ':id/terms', to: 'apps#terms', as: :app_terms
  get ':id/privacy', to: 'apps#privacy', as: :app_privacy

  root 'welcome#index'

  match '*path', to: 'r404#not_found', via: :all
end
