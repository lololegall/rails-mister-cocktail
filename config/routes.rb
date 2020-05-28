  # get 'cocktails', to: 'cocktails#index'

  # get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # post 'cocktails', to: 'cocktails#create'

  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail

  # get 'cocktails/:id/doses/new', to: 'doses#new', as: :new_dose
  # post 'cocktails/:id/doses', to: 'doses#create'

  # delete 'doses/:id', to: 'doses#destroy'

Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
