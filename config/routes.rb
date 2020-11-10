Rails.application.routes.draw do
  #CRUD ROUTES

  # Read all b castles
  # verb  path             to   controller#controller_action
  # get '/bouncy_castles', to: 'bouncy_castles#index'
  # # Read 1 b castle
  # Always put the new action above the show!!!
  # get '/bouncy_castles/new', to: 'bouncy_castles#new' # new page for the empty form
  # get '/bouncy_castles/:id', to: 'bouncy_castles#show'
  # # Create a b castle
  # # 2 step process
  # post '/bouncy_castles', to: 'bouncy_castles#create' # create action actually creates the bouncy castle, when we click submit
  # # Update a castle
  # # 2 step process
  # get '/bouncy_castles/:id/edit', to: 'bouncy_castles#edit' #edit page for prefilled form
  # patch '/bouncy_castles/:id', to: 'bouncy_castles#update'
  # # Delete a castle
  # delete '/bouncy_castles/:id', to: 'bouncy_castles#destroy'

  resources :bouncy_castles
end
