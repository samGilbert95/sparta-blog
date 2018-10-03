Rails.application.routes.draw do
  root 'static#landing'
  resources :users
  resources :blogs do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
