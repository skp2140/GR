Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'

  get  '/grandravine',    to: 'static_pages#OpenScadpm'

  get  '/rcm',    to: 'static_pages#Documentation'

  get  '/packages',    to: 'static_pages#Packages'

  get  '/support',    to: 'static_pages#Support'

  get  '/signup', to: 'users#new'

  get    '/login',   to: 'sessions#new'

  post   '/login',   to: 'sessions#create'

  delete '/logout',  to: 'sessions#destroy'

  resources :users

end
