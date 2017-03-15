Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root "prints#index"
  resources :prints, only: [:index, :show]
  resources :adminprints, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :prints do
    resources :comments, only: :create
  end
end
