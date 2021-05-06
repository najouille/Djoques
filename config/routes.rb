Rails.application.routes.draw do
  resources :djoques do
    member do
      post 'toggle-like', to: "djoques#toggle_like", as: :toggle_like
    end
  end
  devise_for :djokers
  root "djoques#index"
end
