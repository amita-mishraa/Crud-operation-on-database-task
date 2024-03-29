Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :student, only: [ :index , :show , :create , :update , :destroy ]
  resources :faculty, only: [ :index , :show , :create , :update , :destroy ]
  resources :subject, only: [:index , :show , :create , :update , :destroy ]
  resources :branch, only: [:index , :show , :create , :update , :destroy ]
  resources :faculty_subject, only: [:index , :show , :create , :update , :destroy ]
  resources :student_subject, only: [:index , :show , :create , :update , :destroy ]
  
end

