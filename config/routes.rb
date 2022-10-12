Rails.application.routes.draw do
  root "posts#index"

  get '/:mission', to: "posts#filter"

  resources :posts
end
