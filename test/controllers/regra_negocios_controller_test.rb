require 'test_helper'

class RegraNegociosControllerTest < ActionController::TestCase
  setup do
    @regra_negocio = regra_negocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regra_negocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regra_negocio" do
    assert_difference('RegraNegocio.count') do
      post :create, regra_negocio: { descricaoRegra: @regra_negocio.descricaoRegra, nomeRegra: @regra_negocio.nomeRegra, siglaRegra: @regra_negocio.siglaRegra }
    end

    assert_redirected_to regra_negocio_path(assigns(:regra_negocio))
  end

  test "should show regra_negocio" do
    get :show, id: @regra_negocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regra_negocio
    assert_response :success
  end

  test "should update regra_negocio" do
    patch :update, id: @regra_negocio, regra_negocio: { descricaoRegra: @regra_negocio.descricaoRegra, nomeRegra: @regra_negocio.nomeRegra, siglaRegra: @regra_negocio.siglaRegra }
    assert_redirected_to regra_negocio_path(assigns(:regra_negocio))
  end

  test "should destroy regra_negocio" do
    assert_difference('RegraNegocio.count', -1) do
      delete :destroy, id: @regra_negocio
    end

    assert_redirected_to regra_negocios_path
  end
end
