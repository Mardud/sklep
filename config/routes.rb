Sklep::Application.routes.draw do
  resources :categorys
  root to: "categorys#index"

  namespace :admin do
    resources :categorys
  end
  resources :categorys do
    resources :products
  end
end
