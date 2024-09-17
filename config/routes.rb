Rails.application.routes.draw do
  # Users routes
  devise_for :users
  # get '/users/sign_out', to: 'pages#accueil'

  # Professeurs routes
  get "notreequipe" => "professeurs#notreequipe"
  get "sarkisgrigorian" => "professeurs#sarkisgrigorian"
  get "denislamaj" => "professeurs#denislamaj"
  get "gaelalamargot" => "professeurs#gaelalamargot"
  get "petroschrokoyan" => "professeurs#petroschrokoyan"
  get "nasim" => "professeurs#nasim"
  get "anaisgrigorian" => "professeurs#anaisgrigorian"
  get "annagrigorian" => "professeurs#annagrigorian"
  get "almendra" => "professeurs#almendra"
  get "teresagrigorian" => "professeurs#teresagrigorian"
  get "eugenie" => "professeurs#eugenie"

  #splash routes
  root 'splash#index'  # Set splash#index as the root route
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Pages routes
  get "accueil" => "pages#accueil"
  get 'tarif', to: 'pages#tarif'
  get "prestations" => "pages#prestations"
  get "gallerie" => "pages#gallerie"
  get "nosfondateurs" => "pages#nosfondateurs"
  get "contact" => "pages#contact"
  get "cadeau" => "pages#cadeau"
  get "animations" => "pages#animations"
  get "coursdanse" => "pages#coursdanse"
  get "animationsenfants" => "pages#animationsenfants"
  get "cadeau" => "pages#cadeau"
  # Defines the root path route ("/")
  # root "posts#index"
end
