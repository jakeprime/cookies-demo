Rails.application.routes.draw do
  root 'cookies#index'
  post '/' => 'cookies#index'
end
