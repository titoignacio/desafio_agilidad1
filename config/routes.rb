Rails.application.routes.draw do
  get 'random_user/new'
  devise_for :users, controller: {registration: "users/registrations"}
  get 'roulette', to: 'random_user#new', as: 'random_user'
  patch 'like/:id', to:'like#update', as:'like'
  patch 'dislike/:id', to:'dislike#update', as:'dislike'
  get 'congrats', to:'congrats#index', as:'congrats'
  get 'private_messages/:id', to:'private_messages#new', as:'new_pm'
  patch 'private_messages/:id', to:'private_messages#create', as:'update_pm'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
