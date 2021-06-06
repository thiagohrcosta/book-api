Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :books, only: [ :index ]
    end
  end

  resources :books

  delete "books/:id", to: "books#destroy", as: :destroy_book
end
