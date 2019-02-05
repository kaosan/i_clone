Rails.application.routes.draw do
  get 'sessions/new'

resources :contacts
root to: 'images#top'
resources :likes, only:[:create, :destroy]
resources :sessions, only: [:new, :create, :destroy]
resources :users
resources :images do
  collection do
    post :confirm
  end
end
mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
