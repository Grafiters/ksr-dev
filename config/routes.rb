Rails.application.routes.draw do
  # get 'dasboard/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :members
  resources :events

  get '/', to: 'homes#index'
  get '/dashboard', to: 'dasboard#index'
  get '/dashboard/member', to: 'members#index'
  get '/dashboard/event', to: 'events#index'

end
