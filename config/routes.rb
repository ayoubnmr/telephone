Rails.application.routes.draw do
  root 'phonenums#index'
  resources :phonenums do
    resources:infos
  end
end
