Rails.application.routes.draw do
  get 'cms/new'

  get 'cms/edit'

  get 'cms/approve'

  get 'users/new'

  get 'users/new'

  resources :projects
	resources :home
	root 'home#index'
	resources :cms

	get "about_us", :to => "home#index", :as => :about_us
	get "contribute", :to => "home#index", :as => :contribute
end
