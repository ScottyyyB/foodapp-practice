Rails.application.routes.draw do
  get 'article/show'

  get 'article/new'

  get 'article/create'

  get 'landing/index'
  root controller: :landing, action: :index
  resources :articles, only: [:create, :new, :show]
end
