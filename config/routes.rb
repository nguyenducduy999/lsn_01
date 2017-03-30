Rails.application.routes.draw do

  get "/page/:page" => "static_pages#show"
  root "static_pages#show", page: "home"
  scope "(:locale)", locale: /en|vi/ do
    resources :questions, only: :show
    devise_for :users, controllers: {registrations: "registrations"}
  end
  resources :users, only: :show
end
