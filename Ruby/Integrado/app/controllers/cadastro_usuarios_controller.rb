class CadastroUsuariosController < ApplicationController
  before_action :set_cadastro_usuario, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_usuarios
  # GET /cadastro_usuarios.json
  def index
    @cadastro_usuarios = CadastroUsuario.all
  end

  # GET /cadastro_usuarios/1
  # GET /cadastro_usuarios/1.json
  def show
  end

  # GET /cadastro_usuarios/new
  def new
    @cadastro_usuario = CadastroUsuario.new
  end

  # GET /cadastro_usuarios/1/edit
  def edit
  end

  # POST /cadastro_usuarios
  # POST /cadastro_usuarios.json
  def create
    @cadastro_usuario = CadastroUsuario.new(cadastro_usuario_params)

    respond_to do |format|
      if @cadastro_usuario.save
        format.html { redirect_to @cadastro_usuario, notice: 'Cadastro usuario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cadastro_usuario }
      else
        format.html { render action: 'new' }
        format.json { render json: @cadastro_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_usuarios/1
  # PATCH/PUT /cadastro_usuarios/1.json
  def update
    respond_to do |format|
      if @cadastro_usuario.update(cadastro_usuario_params)
        format.html { redirect_to @cadastro_usuario, notice: 'Cadastro usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cadastro_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_usuarios/1
  # DELETE /cadastro_usuarios/1.json
  def destroy
    @cadastro_usuario.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_usuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_usuario
      @cadastro_usuario = CadastroUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_usuario_params
      params.require(:cadastro_usuario).permit(:nome, :registroUsuario, :emailUsuario, :senha, :telefone, :dataCadastro, :usuario_registroUsuario)
    end
end
