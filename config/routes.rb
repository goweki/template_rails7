Rails.application.routes.draw do
  get 'home/index'
  get 'home/contacts'
  get 'home/blog'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index' # route ("/")

  get '/contacts', to: 'home#contacts'
  get '/blog', to: 'home#blog'
end
