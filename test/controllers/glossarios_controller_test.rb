require 'test_helper'

class GlossariosControllerTest < ActionController::TestCase
  setup do
    @glossario = glossarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glossarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glossario" do
    assert_difference('Glossario.count') do
      post :create, glossario: { descricaoGlossario: @glossario.descricaoGlossario, siglaGlossario: @glossario.siglaGlossario }
    end

    assert_redirected_to glossario_path(assigns(:glossario))
  end

  test "should show glossario" do
    get :show, id: @glossario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @glossario
    assert_response :success
  end

  test "should update glossario" do
    patch :update, id: @glossario, glossario: { descricaoGlossario: @glossario.descricaoGlossario, siglaGlossario: @glossario.siglaGlossario }
    assert_redirected_to glossario_path(assigns(:glossario))
  end

  test "should destroy glossario" do
    assert_difference('Glossario.count', -1) do
      delete :destroy, id: @glossario
    end

    assert_redirected_to glossarios_path
  end
end
