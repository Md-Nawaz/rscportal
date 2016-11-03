Rails.application.routes.draw do
 

  # get 'oemmain/index'

  # get 'oemmain/new'

  # get 'oemmain/create'

  # get 'oemmain/show'
  devise_for :dealers
  devise_for :oems
  # get 'contract/index'

  # get 'contract/show'

  # get 'contract/new'

  # get 'contract/create'
   get 'oemmain/payrolldetail', to: 'oemmain#payrolldetail'
  get 'portal/home'
  get 'portal/dealers', to: 'portal#dealers'
  get 'portal/oems', to: 'portal#oems'


  resources :dealerportal
  resources :contract
  resources :oemmain



  root 'portal#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
