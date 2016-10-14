Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resources :candidates

  namespace :api, defaults: { format: :json } do
    scope ':candidate_slug' do
      resources :courses
    end
  end
end
