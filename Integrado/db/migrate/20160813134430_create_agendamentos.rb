class CreateAgendamentos < ActiveRecord::Migration
  def change
    create_table :agendamentos do |t|
      t.datetime :dataHora
      t.integer :idQuadra
      t.string :usuario_registroUsuario

      t.timestamps
    end
  end
end
