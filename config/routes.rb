Bdchat::Application.routes.draw do
  resources :users, only: [:show]
  resources :chats, only: [:rec]
  get "/chats/rec", to: "chats#rec"
  post "/chats/sen", to: "chats#sen"
end
