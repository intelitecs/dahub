Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :cotisations, defaults: {format: :json}
  resources :advantages,  defaults: {format: :json}
  resources :contracts, defaults: {format: :json}
  resources :identity_cards, defaults: {format: :json}
  resources :observations, defaults: {format: :json}
  resources :qualifications, defaults: {format: :json}
  resources :handicaps, defaults: {format: :json}
  resources :family_members, defaults: {format: :json}
  resources :employees, defaults: {format: :json}
  resources :accountants, defaults: {format: :json}
  resources :bank_accounts, defaults: {format: :json}
  resources :managers, defaults: {format: :json}
  resources :charges, defaults: {format: :json}
  resources :etablissement_activities, defaults: {format: :json}
  resources :etablissements, defaults: {format: :json}
  resources :activities, defaults: {format: :json}
  resources :juridic_forms, defaults: {format: :json}
  resources :companies, defaults: {format: :json}
  resources :company_registry_documents, defaults: {format: :json}
  resources :user_roles, defaults: {format: :json}
  resources :profiles, defaults: {format: :json}
  resources :users, defaults: {format: :json}
  resources :user_profiles, defaults: {format: :json}
  resources :addresses, defaults: {format: :json}
  resources :cities, defaults: {format: :json}
  resources :countries, defaults: {format: :json}
  resources :roles, defaults: {format: :json}
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
