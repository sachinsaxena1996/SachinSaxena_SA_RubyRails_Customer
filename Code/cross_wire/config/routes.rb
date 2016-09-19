Rails.application.routes.draw do
  devise_for :support_agents, :controllers => { :invitation => 'support_agents/invitations' }
  #devise_for :support_agents
  devise_for :customers
  devise_for :admins
  resources :support_requests
  resources :support_agents
  resources :customers
  get 'download_closed_tickets_last_month', to: 'support_requests#download_closed_tickets_last_month'
  root to: 'cross#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
end
