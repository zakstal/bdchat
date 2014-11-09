Bdchat::Application.routes.draw do
  resources :users, only: [:show, :index]
  resources :chats, only: [:rec]
  post "/chats/rec", to: "chats#rec"
  post "/chats/sen", to: "chats#sen"
  post 'notifications/notify' => 'notifications#notify'
  post '/remove_old_chat', to: "chats#rec"
end
