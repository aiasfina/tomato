Rails.application.routes.draw do
  root to: 'home#index'

  resources :clocks do
    get :today, on: :collection
  end

  resources :tasks do
    patch :done, on: :member
  end
end
