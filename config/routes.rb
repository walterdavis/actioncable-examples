Rails.application.routes.draw do
  resource  :session
  resources :examples

  resources :messages do
    resources :comments
  end

  root 'examples#index'

  mount ActionCable.server => '/cable'
end
