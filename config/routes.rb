class SubdomainConstraint   
  
  def self.matches?(request)     
    request.subdomain.present? && request.subdomain != 'www'   
  end 
end 
Rails.application.routes.draw do

  
	constraints SubdomainConstraint do     
		resources :companies 
  	end   
 
  resources :companies 
  root 'home#index'
  devise_for :users
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
