require 'test_helper'

class AcercasControllerTest < ActionController::TestCase
  setup do
    @acerca = acercas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acercas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acerca" do
    assert_difference('Acerca.count') do
      post :create, acerca: { description: @acerca.description, image: @acerca.image, title: @acerca.title }
    end

    assert_redirected_to acerca_path(assigns(:acerca))
  end

  test "should show acerca" do
    get :show, id: @acerca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acerca
    assert_response :success
  end

  test "should update acerca" do
    put :update, id: @acerca, acerca: { description: @acerca.description, image: @acerca.image, title: @acerca.title }
    assert_redirected_to acerca_path(assigns(:acerca))
  end

  test "should destroy acerca" do
    assert_difference('Acerca.count', -1) do
      delete :destroy, id: @acerca
    end

    assert_redirected_to acercas_path
  end
end
