Rails.application.routes.draw do
  resources :questions, only: :show
end
