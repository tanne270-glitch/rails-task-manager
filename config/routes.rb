# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Defines the root path route ("/")
#   # root "posts#index"
#   get "tasks", to: "tasks#index"
#   get "tasks/:id", to: "tasks#show"
#   post "tasks", to: "tasks#create"

#   #create
#   get "tasks/new", to:"tasks#new"
#   post "tasks", to:"tasks#create"

#  # UPDATE
#   get   "tasks/:id/edit", to: "tasks#edit"
#   patch "tasks/:id", to: "tasks#update"
# end


Rails.application.routes.draw do
  # READ all
  get    "tasks", to: "tasks#index"

  # CREATE
  get    "tasks/new", to: "tasks#new"      # << ต้องมาก่อน :id
  post   "tasks", to: "tasks#create"

  # READ one
  get    "tasks/:id", to: "tasks#show"

  # UPDATE
  get    "tasks/:id/edit", to: "tasks#edit"     # << ควรอยู่ก่อน patch :id เช่นกัน
  patch  "tasks/:id", to: "tasks#update"

  # DELETE
  delete "tasks/:id", to: "tasks#destroy"
end
