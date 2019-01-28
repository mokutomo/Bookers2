Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users

  resources :books
  resources :users
  get '/home' => 'homes#top'
  get '/home' => 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
