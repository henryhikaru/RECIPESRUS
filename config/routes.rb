Rails.application.routes.draw do
  root to: "recipes#index"
  resources :recipes do
    resources :added_ingredients, only: [:new, :create]
  end
  resources :added_ingredients, only: [:destroy]
end

end
