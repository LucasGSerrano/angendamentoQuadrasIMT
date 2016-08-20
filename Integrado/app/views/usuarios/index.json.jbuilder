json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :registroUsuario, :senha, :nome, :tipoUsuario, :ultimoAgendamento, :situacaoMatricula, :fotoUsuario, :emailUsuario, :telefone, :dataCadastro, :dataUpdate
  json.url usuario_url(usuario, format: :json)
end
