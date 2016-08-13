Integrado::Application.routes.draw do
  get "login/index" 

  root 'login#index'

  get "log_in" => "usuarios#index"

  resources :cadastro_usuarios

  resources :agendamentos

  resources :usuarios
end
