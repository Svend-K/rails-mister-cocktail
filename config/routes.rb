Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [ :create ]
  end
  resources :doses, only: [ :destroy ]
  root "cocktails#index"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
