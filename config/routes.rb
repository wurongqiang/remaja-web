Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  namespace :api do
    namespace :v1 do
      post 'login', to: 'sessions#login'
      post 'logout', to: 'sessions#logout'

      post 'change-password', to: 'users#change_password'
      post 'edit-profile', to: 'users#edit_profile'

      resources 'attendances', only: [:create, :index]
    end
  end
end
