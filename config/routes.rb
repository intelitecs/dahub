Rails.application.routes.draw do

  resources :cotisations
  resources :advantages
  resources :contracts
  resources :identity_cards
  resources :observations
  resources :qualifications
  resources :handicaps
  resources :family_members
  resources :employees
  resources :accountants
  resources :bank_accounts
  resources :managers
  resources :charges
  resources :etablissement_activities
  resources :etablissements
  resources :activities
  resources :juridic_forms
  resources :companies
  resources :company_registry_documents
  resources :user_roles
  resources :profiles
  resources :users
  resources :user_profiles
  resources :addresses
  resources :cities
  resources :countries
  resources :roles
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
