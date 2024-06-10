Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  get "accueil" => "pages#accueil"
  get "prestations" => "pages#prestations"
  get "gallerie" => "pages#gallerie"
  get "notrehistoire" => "pages#notrehistoire"
  get "contact" => "pages#contact"
  get "notreequipe" => "pages#notreequipe"
  get "cadeau" => "pages#cadeau"
  get "animations" => "pages#animations"
  get "coursdanse" => "pages#coursdanse"
  get "animationsenfants" => "pages#animationsenfants"
  get "cadeau" => "pages#cadeau"
  # Defines the root path route ("/")
  # root "posts#index"
end
