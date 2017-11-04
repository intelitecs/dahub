Rails.application.routes.draw do

  get 'adminboard', to: 'adminboard#index', as: 'adminboard'
  get 'profilesmanagment', to: 'adminboard#profilesmanagment', as: 'profilesmanagment'


  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  get '/signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as:'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


  resources :sessions
  resources :cotisations, defaults: {format: :html}
  resources :advantages,  defaults: {format: :html}
  resources :contracts, defaults: {format: :html}
  resources :identity_cards, defaults: {format: :html}
  resources :observations, defaults: {format: :html}
  resources :qualifications, defaults: {format: :html}
  resources :handicaps, defaults: {format: :html}
  resources :family_members, defaults: {format: :html}
  resources :employees, defaults: {format: :html}
  resources :accountants, defaults: {format: :html}
  resources :bank_accounts, defaults: {format: :html}
  resources :managers, defaults: {format: :html}
  resources :charges, defaults: {format: :html}
  resources :etablissement_activities, defaults: {format: :html}
  resources :etablissements, defaults: {format: :html}
  resources :activities, defaults: {format: :html}
  resources :juridic_forms, defaults: {format: :html}
  resources :companies, defaults: {format: :html}
  resources :company_registry_documents, defaults: {format: :html}
  resources :profiles, defaults: {format: :html}
  resources :users, defaults: {format: :html}
  resources :user_profiles, defaults: {format: :html}
  resources :addresses, defaults: {format: :html}
  resources :cities, defaults: {format: :html}
  resources :countries, defaults: {format: :html}
  resources :roles, defaults: {format: :html}
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
