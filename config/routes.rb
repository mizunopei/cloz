Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items, except: [:show] do
    put :sort
    collection do
      #カテゴリーのパス
      get "outer"
      get "tops"
      get "bottoms"
      get "shoes"
      get "goods"
      ##カラーのパス
      get "black"
      get "white"
      get "navy"
      get "gray"
      get "beige"
      get "green"
      get "other_color"
    end
  end

  resources :users, only: [:show]
end
