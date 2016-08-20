class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :registroUsuario
      t.string :senha
      t.string :nome
      t.integer :tipoUsuario
      t.datetime :ultimoAgendamento
      t.string :situacaoMatricula
      t.string :fotoUsuario
      t.string :emailUsuario
      t.integer :telefone
      t.datetime :dataCadastro
      t.datetime :dataUpdate

      t.timestamps
    end
  end
end
