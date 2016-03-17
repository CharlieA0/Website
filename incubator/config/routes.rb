Rails.application.routes.draw do
  get 'users/new'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/new'

  get 'cms/new'


  get 'cms/approve'

  resources :projects
	resources :home
  resources :users
	root 'home#index'
	resources :cms
	get "about_us", :to => "home#index", :as => :about_us
	get "contribute", :to => "home#index", :as => :contribute
end
