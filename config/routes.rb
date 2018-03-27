Rails.application.routes.draw do
  resources :addresses
  resources :students do
    resources :addresses
  end
end
