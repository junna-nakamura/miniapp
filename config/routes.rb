Rails.application.routes.draw do
  devise_for :users
  root 'wishes#index'
  resources :wishes
  post "checks/:wish_id/create" => "checks#create"
  post "checks/:wish_id/destroy" => "checks#destroy"
end


