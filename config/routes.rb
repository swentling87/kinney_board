Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'
  resources :posts do
    resources :comments, only: [:create]
  end
end
