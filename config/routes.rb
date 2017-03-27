Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about',   to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :portfolio, controller: 'portfolios', except: [:index]
  get 'portfolios', to: 'portfolios#index', as: 'portfolios'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
end
