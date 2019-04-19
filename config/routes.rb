Rails.application.routes.draw do
  resources :word_selects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'word_selects#new'
  get 'index', to: 'word_selects#index', as: 'index'
end
