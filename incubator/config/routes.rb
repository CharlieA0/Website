Rails.application.routes.draw do
  resources :projects
	root 'home#index'
  get 'projects/index'
  get 'projects/show'
  get 'intra/index'
end
