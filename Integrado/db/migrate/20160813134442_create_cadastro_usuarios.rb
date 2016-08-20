class CreateCadastroUsuarios < ActiveRecord::Migration
  def change
    create_table :cadastro_usuarios do |t|
      t.string :nome
      t.string :registroUsuario
      t.string :emailUsuario
      t.string :senha
      t.integer :telefone
      t.datetime :dataCadastro
      t.string :usuario_registroUsuario

      t.timestamps
    end
  end
end
