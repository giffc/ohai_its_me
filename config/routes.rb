BecarellaHome::Application.routes.draw do
  get "static_pages/index"

  root :to => 'posts#index'
  match 'posts' => 'posts#index'

  match 'signin' => 'let_me_in/sessions#new'
  match 'signout' => 'let_me_in/sessions#destroy'
  match 'auth/:provider/connect' => "let_me_in/auth#connect"
  match 'auth/:provider/disconnect' => 'let_me_in/auth#disconnect'
  match 'auth/:provider/callback' => 'let_me_in/auth#callback'
  match 'auth(/:provider)/failure' => 'let_me_in/auth#failure'
  match 'accounts' => 'let_me_in/linked_accounts#index', :as => 'accounts'
  match 'accounts' => 'let_me_in/linked_accounts#index', :as => 'post_login'
end
