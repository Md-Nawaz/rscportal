Rails.application.routes.draw do
  get 'portal/home'
  get 'portal/dealers', to: 'portal#dealers'

  devise_for :dealers

  root 'portal#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
