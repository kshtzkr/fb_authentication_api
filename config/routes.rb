Rails.application.routes.draw do
  devise_for :users
  resources :facebook_authentications do
    collection do
      post :fb_login
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
