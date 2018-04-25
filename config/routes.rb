Rails.application.routes.draw do
  get 'private_realty/new'

  get 'private_realty/create'

  get 'private_realty/edit'

  get 'private_realty/update'

  get 'private_realty/index'

  get 'private_realty/show'

  get 'private_realty/destroy'

#  get 'users/show'
#
#  get 'users/edit'
#
#  get 'users/update'

	
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'realties/new'

  get 'realties/create'

  get 'realties/edit'

  get 'realties/update'

  get 'realties/index'

  get 'realties/show'

  get 'realties/destroy'

  root 'pages#home'

  get 'about' => 'pages#about'
	
	resources :realties
	resources :users
	resources :private_realty
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
