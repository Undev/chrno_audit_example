ChrnoAuditExample::Application.routes.draw do
  mount ChrnoAudit::Engine => "/chrno_audit"
  namespace :nested do resources :pages end
  resources :pages
  # or
  #resources :pages do chrno_audit end

  devise_for :users

  root to: 'pages#index'
end
