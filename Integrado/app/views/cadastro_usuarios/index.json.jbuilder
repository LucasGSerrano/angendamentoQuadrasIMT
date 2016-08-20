json.array!(@cadastro_usuarios) do |cadastro_usuario|
  json.extract! cadastro_usuario, :id, :nome, :registroUsuario, :emailUsuario, :senha, :telefone, :dataCadastro, :usuario_registroUsuario
  json.url cadastro_usuario_url(cadastro_usuario, format: :json)
end
