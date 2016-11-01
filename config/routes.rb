Rails.application.routes.draw do
 

  # get 'contract/index'

  # get 'contract/show'

  # get 'contract/new'

  # get 'contract/create'
  resources :contract
  get 'portal/home'
  get 'portal/dealers', to: 'portal#dealers'

  devise_for :dealers
  resources :dealerportal



  root 'portal#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
