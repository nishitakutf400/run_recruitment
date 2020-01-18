Rails.application.routes.draw do
  get 'offers/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'homes#top'
get 'homes/about' =>'homes#about'
resources :recitments
resources :users
resources :offer
get 'offer/thank' => 'offer#thank'

end
