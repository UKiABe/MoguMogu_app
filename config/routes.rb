Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # root 'page#TopPage'
  get '/blog', to: 'page#blog'
  get '/blog/:id', to: 'page#show'
  get '/category/blog', to: 'page#blog_category'
  get '/category/dish', to: 'page#dish_category'
end
