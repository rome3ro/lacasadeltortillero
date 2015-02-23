require 'test_helper'

class ProductoDetailsControllerTest < ActionController::TestCase
  setup do
    @producto_detail = producto_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_detail" do
    assert_difference('ProductoDetail.count') do
      post :create, producto_detail: { description: @producto_detail.description, image: @producto_detail.image, name: @producto_detail.name, producto_id: @producto_detail.producto_id }
    end

    assert_redirected_to producto_detail_path(assigns(:producto_detail))
  end

  test "should show producto_detail" do
    get :show, id: @producto_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_detail
    assert_response :success
  end

  test "should update producto_detail" do
    put :update, id: @producto_detail, producto_detail: { description: @producto_detail.description, image: @producto_detail.image, name: @producto_detail.name, producto_id: @producto_detail.producto_id }
    assert_redirected_to producto_detail_path(assigns(:producto_detail))
  end

  test "should destroy producto_detail" do
    assert_difference('ProductoDetail.count', -1) do
      delete :destroy, id: @producto_detail
    end

    assert_redirected_to producto_details_path
  end
end
