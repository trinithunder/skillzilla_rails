Rails.application.routes.draw do
  resources :quizzes
  resources :hubs
  resources :posts
  resources :days_streaks
  resources :leaves
  resources :life_stages
  resources :subscriptions
  resources :learning_styles
  resources :privacy_policies
  resources :terms_of_services
  resources :notifications
  resources :onboardings
  resources :faqs
  resources :blogs
  resources :homes
  devise_for :users
  resources :topic_comments
  resources :topics
  resources :courses
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  post '/send_to_slack', to: 'api#send_message_to_slack'

  # Defines the root path route ("/")
   root "homes#index"
end
