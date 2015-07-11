Rails.application.routes.draw do
  resources :books, only: [:index, :show] do
    resources :comments, only: [:create]
  end
end
