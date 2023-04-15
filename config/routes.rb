Rails.application.routes.draw do
  
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  mount_devise_token_auth_for 'User', at: '/api/v1/auth'

  namespace :api do
    namespace :v1 do
      resources :posts, only:[:index, :show, :create, :update, :destroy]
      resources :comentarios, only:[:index, :show, :create, :update, :destroy]
    end
  end
end
