Rails.application.routes.draw do
  get "/page/:page" => "static_pages#show"
  root "static_pages#show", page: "home"
  scope "(:locale)", locale: /en|vi/ do
    devise_for :users, controllers: {registrations: "registrations"}
  end
  resources :users, only: :show
  get "/admin", to: "admin#index"
  get "search", to: "search#search"
  resources :questions, only: :show
end
