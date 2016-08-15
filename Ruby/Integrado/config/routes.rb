Integrado::Application.routes.draw do
  get "login/index"
  root 'login#index'

  post "log_in" => "login#login"

  resources :cadastro_usuarios

  resources :agendamentos

  resources :usuarios
end
