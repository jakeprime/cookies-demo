Rails.application.routes.draw do
  root 'cookies#index'
  resources :cookies, only: %i[index update]
end
