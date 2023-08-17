Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/students', to: "student#list"
  get '/students/:id', to: 'student#show'
  post '/students', to: 'student#create'
  put '/students/:id', to: 'student#update'
  delete '/students/:id', to: 'student#destroy'
  get '/facultys', to: 'faculty#list'
  get '/facultys/:id', to: 'faculty#show'
  post '/facultys', to: 'faculty#create'
  put '/facultys/:id', to: 'faculty#update'
  delete '/facultys/:id', to: 'faculty#destroy'
  get '/subjects', to: "subject#list"
  get '/subjects/:id', to: 'subject#show'
  post '/subjects', to: 'subject#create'
  put '/subjects/:id', to: 'subject#update'
  delete '/subjects/:id', to: 'subject#destroy'
  get '/branchs', to: "branch#list"
  get '/branchs/:id', to: 'branch#show'
  post '/branchs', to: 'branch#create'
  put '/branchs/:id', to: 'branch#update'
  delete '/branchs/:id', to: 'branch#destroy'
end
