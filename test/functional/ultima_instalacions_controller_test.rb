require 'test_helper'

class UltimaInstalacionsControllerTest < ActionController::TestCase
  setup do
    @ultima_instalacion = ultima_instalacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ultima_instalacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ultima_instalacion" do
    assert_difference('UltimaInstalacion.count') do
      post :create, ultima_instalacion: { description: @ultima_instalacion.description, image: @ultima_instalacion.image }
    end

    assert_redirected_to ultima_instalacion_path(assigns(:ultima_instalacion))
  end

  test "should show ultima_instalacion" do
    get :show, id: @ultima_instalacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ultima_instalacion
    assert_response :success
  end

  test "should update ultima_instalacion" do
    put :update, id: @ultima_instalacion, ultima_instalacion: { description: @ultima_instalacion.description, image: @ultima_instalacion.image }
    assert_redirected_to ultima_instalacion_path(assigns(:ultima_instalacion))
  end

  test "should destroy ultima_instalacion" do
    assert_difference('UltimaInstalacion.count', -1) do
      delete :destroy, id: @ultima_instalacion
    end

    assert_redirected_to ultima_instalacions_path
  end
end
