Rails.application.routes.draw do
  # get 'urls/index'
  #
  # get 'urls/create'
  #
  # get 'urls/show'


  resources :urls, only: [:create, :index]
  root 'urls#index'



  get 'url/:new_url' => 'urls#show', as: :new_url
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
