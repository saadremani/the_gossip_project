Rails.application.routes.draw do

  get 'team', to: 'team#show_team'
  get 'contact', to: 'contact#show_contact'
  get 'index', to: 'index#index'
	
  get 'show/:id', to: 'show#show', as: 'show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
