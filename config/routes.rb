# frozen_string_literal: true

Rails.application.routes.draw do
  # devise auth route segment
  devise_for :users

  # root route
  root to: 'home#index'
  # public routes
  get '/contacts', to: 'home#contacts'
  get '/blog', to: 'home#blog'

  # protected routes
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
end
