Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "openinfos#index"
  resources :openinfos

  resources :users do
  	resources :openinfos
    resources :resumeitems
    resources :downloads
    resources :corporates
  end	
  
  resource :session

  resources :viewers

  resource :viewersession

  resources :infocats

  resources :resumeitems

  resources :downloads

  resources :corporates

end
