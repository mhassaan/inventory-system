Rails.application.routes.draw do


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#index"
  scope path: ':organization_id' do
    get 'dashboard', to: 'dashboard#index'
  end
end
