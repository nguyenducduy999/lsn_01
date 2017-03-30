Rails.application.routes.draw do
  resources :questions, only: :show
  get "/page/:page" => "static_pages#show"
  root "static_pages#show", page: "home"
end
