Rails.application.routes.draw do
	root 'books#index'
	resources :books do
		get 'search'
	end
end
