Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'locals#index'
  resources :locals do
    resources :comments, only: [:create]
    resources :comments, only: [:index]
  end

end
