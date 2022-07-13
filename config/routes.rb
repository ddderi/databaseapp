Rails.application.routes.draw do
  resources :excursions
  resources :teachers 
  resources :articles 
  resources :students
  get '/', to: 'main#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :teachers do
  #   collection do
  #     get 'displayart'
  #   end
  # end

end
