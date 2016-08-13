require 'test_helper'

class CadastroUsuariosControllerTest < ActionController::TestCase
  setup do
    @cadastro_usuario = cadastro_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastro_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro_usuario" do
    assert_difference('CadastroUsuario.count') do
      post :create, cadastro_usuario: { dataCadastro: @cadastro_usuario.dataCadastro, emailUsuario: @cadastro_usuario.emailUsuario, nome: @cadastro_usuario.nome, registroUsuario: @cadastro_usuario.registroUsuario, senha: @cadastro_usuario.senha, telefone: @cadastro_usuario.telefone, usuario_registroUsuario: @cadastro_usuario.usuario_registroUsuario }
    end

    assert_redirected_to cadastro_usuario_path(assigns(:cadastro_usuario))
  end

  test "should show cadastro_usuario" do
    get :show, id: @cadastro_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastro_usuario
    assert_response :success
  end

  test "should update cadastro_usuario" do
    patch :update, id: @cadastro_usuario, cadastro_usuario: { dataCadastro: @cadastro_usuario.dataCadastro, emailUsuario: @cadastro_usuario.emailUsuario, nome: @cadastro_usuario.nome, registroUsuario: @cadastro_usuario.registroUsuario, senha: @cadastro_usuario.senha, telefone: @cadastro_usuario.telefone, usuario_registroUsuario: @cadastro_usuario.usuario_registroUsuario }
    assert_redirected_to cadastro_usuario_path(assigns(:cadastro_usuario))
  end

  test "should destroy cadastro_usuario" do
    assert_difference('CadastroUsuario.count', -1) do
      delete :destroy, id: @cadastro_usuario
    end

    assert_redirected_to cadastro_usuarios_path
  end
end
