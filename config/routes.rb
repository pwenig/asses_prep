Rails.application.routes.draw do

 root "welcome#index"

  resources :users
  resources :sessions
  delete 'sessions' => 'sessions#delete'

end
