Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create]
end


  #    lists GET  /lists lists #index
  #          POST /lists lists #create
  # new_list GET  /lists/new lists #new
  #    list  GET  /lists/:id lists #show
