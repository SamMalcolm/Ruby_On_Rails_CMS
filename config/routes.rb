Rails.application.routes.draw do




  root 'demo#index'

  get 'demo/index'
  get 'demo/about'
  get 'demo/contact'
  get 'demo/hello'

  resources :subjects do
	member do
		get :delete
	end
  end

  resources :pages do
	member do
		get :delete
	end
  end
#   get 'demo/hello'
#   get ':controller(/:action(/:id))'

  #   get 'pages/index'
#   get 'pages/show'
#   get 'pages/new'
#   get 'pages/edit'
#   get 'pages/delete'
#   get 'subjects/index'
#   get 'subjects/show'
#   get 'subjects/new'
#   get 'subjects/edit'
#   get 'subjects/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
