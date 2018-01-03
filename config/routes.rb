Rails.application.routes.draw do
  resources :order1s
  resources :products
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  get 'dashboard/index'

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
