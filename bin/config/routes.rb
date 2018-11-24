Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # root 'page#TopPage'
  resources :blog, only: [:index, :show]
  get '/category/blog', to: 'blog#blog_category'
  get '/category/dish', to: 'blog#dish_category'
end
