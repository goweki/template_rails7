# frozen_string_literal: true

Rails.application.routes.draw do
  # devise auth route segment
  devise_for :users

  # root route
  root to: 'home#index'

  # resourceful routing for 'home' actions
  get '/contacts', to: 'home#contacts'
  get '/blog', to: 'home#blog'
end
