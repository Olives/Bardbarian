Bardbarian::Application.routes.draw do


  resources :characters
  resources :campaigns

  resources :classes
  resources :skills
  resources :feats

  match '/:controller(/:action(/:id))'
end
