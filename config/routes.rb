Rozkl::Application.routes.draw do

  resources :sprawdzians
  root :to => 'sprawdzians#index'
end
