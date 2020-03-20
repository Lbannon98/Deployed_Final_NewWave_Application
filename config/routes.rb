Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end

  resources :newsapi
  resources :pages
  resources :profiles

  root to: 'pages#index'

  devise_for :editors, path: 'editors', :controllers => { registrations: 'devise/registrations' }
  devise_for :users, path: 'users', :controllers => { registrations: 'devise/registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
