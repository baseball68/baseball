Rails.application.routes.draw do
 

  # そのほかのリソース
  resources :tops, only: :index
  resources :tweets

  # クイズ機能
 resources :quizzes
    get '/result' => 'quizzes#result'
    root "top#index"
end