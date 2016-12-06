Rails.application.routes.draw do
  
  resources :questions do
    resources :answers
  end
  get 'questions/index'

  root 'questions#index'
end
