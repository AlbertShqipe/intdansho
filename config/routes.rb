Rails.application.routes.draw do
  root 'splash#index'  # Set splash#index as the root route
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  get "accueil" => "pages#accueil"
  get "prestations" => "pages#prestations"
  get "gallerie" => "pages#gallerie"
  get "nosfondateurs" => "pages#nosfondateurs"
  get "contact" => "pages#contact"
  get "notreequipe" => "pages#notreequipe"
  get "cadeau" => "pages#cadeau"
  get "animations" => "pages#animations"
  get "coursdanse" => "pages#coursdanse"
  get "animationsenfants" => "pages#animationsenfants"
  get "cadeau" => "pages#cadeau"
  get "sarkisgrigorian" => "pages#sarkisgrigorian"
  # Defines the root path route ("/")
  # root "posts#index"
end
