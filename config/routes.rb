require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Defines the root path route ("/")
  root "home#index"
  resources :books
  resources :book_borrows
  resources :publishing_companies
  resources :classifies
  resources :languages
  resources :authors
  resources :storage_locations
  resources :departments
  resources :students
  resources :coupon_borrows
  resources :librarians
end
