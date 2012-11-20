Project::Application.routes.draw do

  root to: 'page#index'
  get "page/index"

  match 'contact' => 'login/contact#index'
  match 'contact' => 'contact#create', :as => 'contact', :via => :post


  devise_for :users, :controllers => { :registrations => "users/registrations" }

  resources :reminders
  resources :users


end
