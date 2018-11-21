Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'page#TopPage'
  get '/blog', to: 'page#blog'
  get '/blog/:id', to: 'page#show'
end
