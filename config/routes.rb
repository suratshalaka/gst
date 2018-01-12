Rails.application.routes.draw do


  resources :products do
    collection do
      get :load_product_data
     end
    end  
  resources :clients do
    collection do
      get :load_client_data
   end 
   end  
  resources :invoices do
     member do 
      get 'show_invoice'
     end
    end   
  resources :welcome
  get 'welcome/index'

  root 'welcome#index'
 
  devise_for :users

  devise_scope :user do
   	get '/users/sign_out' => 'devise/sessions#destroy'
   end

 	
   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
