Rails.application.routes.draw do

 root "welcome#index"

  resources :users
  resources :sessions
  delete 'sessions' => 'sessions#delete'
  resources :books do
    resources :comments
  end
  resources :albums do
    resources :comments
  end


end
