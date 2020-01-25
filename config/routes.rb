Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'homes#top'
get 'homes/about' =>'homes#about'
resources :recitments do
	resource :offers, only: [:create, :destroy, :show]
	resource :recitment_comments, only: [:create, :destroy]
end
resources :users
get 'offers/thank' =>'offers#thank'
get 'offers/index' =>'offers#index'




end
