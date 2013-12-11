SmRc182::Application.routes.draw do
  #get '/crop/:id' => "users#crop"  , as: 'crop_users'
  resources :users
  #For collection custom action
  get 'users/crop'

  root :to => 'users#index'
end
