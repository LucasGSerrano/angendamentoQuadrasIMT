class ChangeColName < ActiveRecord::Migration
  def change
  	 rename_column :cadastro_usuarios, :confirmacao_senha, :password_digest
  end
end
