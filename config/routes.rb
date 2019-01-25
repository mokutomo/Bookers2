Rails.application.routes.draw do

  devise_for :users

  resources :books
  root 'roots#top'
  resources :users
  get '/home' => 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
