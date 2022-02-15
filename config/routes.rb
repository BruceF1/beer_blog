Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'posts#index'
  get 'posts/index'
  get '/post/:id', to: 'posts#show', as: 'show_post'
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
