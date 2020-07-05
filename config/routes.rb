Rails.application.routes.draw do
  get '/books' => 'books#index'
  get 'books/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update]
  root 'home#top'
  get '/about' => 'home#about'

end
