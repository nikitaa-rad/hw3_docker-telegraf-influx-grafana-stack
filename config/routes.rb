# config/routes.rb

Rails.application.routes.draw do
  get '/products/search', to: 'products#search'
end
