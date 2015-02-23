require 'test_helper'

class CorreosControllerTest < ActionController::TestCase
  setup do
    @correo = correos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correo" do
    assert_difference('Correo.count') do
      post :create, correo: { email: @correo.email, image: @correo.image, message: @correo.message, name: @correo.name, telephone: @correo.telephone }
    end

    assert_redirected_to correo_path(assigns(:correo))
  end

  test "should show correo" do
    get :show, id: @correo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @correo
    assert_response :success
  end

  test "should update correo" do
    put :update, id: @correo, correo: { email: @correo.email, image: @correo.image, message: @correo.message, name: @correo.name, telephone: @correo.telephone }
    assert_redirected_to correo_path(assigns(:correo))
  end

  test "should destroy correo" do
    assert_difference('Correo.count', -1) do
      delete :destroy, id: @correo
    end

    assert_redirected_to correos_path
  end
end
