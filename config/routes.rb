Rails.application.routes.draw do

  root 'tops#index'  

  # そのほかのリソース
  resources :tops, only: :index
  resources :tweets

  # クイズ機能
  resources :quizzes do
    collection do
      get :result   # /quizzes/result -> result_quizzes_path
    end
  end
end