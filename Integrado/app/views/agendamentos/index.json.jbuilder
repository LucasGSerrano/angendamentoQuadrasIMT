json.array!(@agendamentos) do |agendamento|
  json.extract! agendamento, :id, :dataHora, :idQuadra, :usuario_registroUsuario
  json.url agendamento_url(agendamento, format: :json)
end
