Rails.application.routes.draw do
  root 'page#TopPage'
  get 'calendar', to: 'calendar#index'
end
