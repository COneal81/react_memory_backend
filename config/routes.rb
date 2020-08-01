Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  
  namespace :api do
    namespace :v1 do
      resources :memories, only: [:index, :create]
      resources :categories, only: [:index]
      resources :users, only: [:create, :show]
      resources :caregivers, only: [:create, :show, :update]
      resources :visits, only: [:index, :create, :show, :update]
    post '/login', to: 'sessions#create'
    end
  end
end
