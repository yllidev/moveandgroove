Rails.application.routes.draw do
	root 'home#home'
  devise_for :users

  get 'home', to:'home#welcome'
  get 'about', to:'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
