Rails.application.routes.draw do



  resources :chores
  resources :lists
  resources :rooms
  resources :families
  as :user do 
  	put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end 	

  devise_for :users, controllers: { registrations: 'registrations', confirmation: 'confirmations' }
  
  root to: "pages#index"	
end
