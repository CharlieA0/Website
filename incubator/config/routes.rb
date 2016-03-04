Rails.application.routes.draw do
  root 'home#home'
  get 'static_pages/language'
  get 'static_pages/help'
  mount Spina::Engine => '/projects'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
end
