Rails.application.routes.draw do
  devise_for :users
  
  root "boards#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :boards do
  resources :lists

end

resources :lists do
  resources :tasks
end
end

