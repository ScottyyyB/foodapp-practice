Rails.application.routes.draw do
  root controller: :landing, action: :index
  resources :articles, only: [:create, :new, :show] do
    resources :comments, only: [:create]
  end
end
