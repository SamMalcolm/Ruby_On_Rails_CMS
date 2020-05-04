Rails.application.routes.draw do

	root 'demo#index'

  get 'demo/index'
  get 'demo/about'
  get 'demo/contact'
#   get 'demo/hello'
  get ':controller(/:action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
