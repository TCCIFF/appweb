require 'test_helper'

class DiagramasControllerTest < ActionController::TestCase
  setup do
    @diagrama = diagramas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagramas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagrama" do
    assert_difference('Diagrama.count') do
      post :create, diagrama: { arquivo: @diagrama.arquivo, nomeDiagrama: @diagrama.nomeDiagrama, tipoDiagrama: @diagrama.tipoDiagrama }
    end

    assert_redirected_to diagrama_path(assigns(:diagrama))
  end

  test "should show diagrama" do
    get :show, id: @diagrama
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagrama
    assert_response :success
  end

  test "should update diagrama" do
    patch :update, id: @diagrama, diagrama: { arquivo: @diagrama.arquivo, nomeDiagrama: @diagrama.nomeDiagrama, tipoDiagrama: @diagrama.tipoDiagrama }
    assert_redirected_to diagrama_path(assigns(:diagrama))
  end

  test "should destroy diagrama" do
    assert_difference('Diagrama.count', -1) do
      delete :destroy, id: @diagrama
    end

    assert_redirected_to diagramas_path
  end
end
