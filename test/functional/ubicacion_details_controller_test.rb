require 'test_helper'

class UbicacionDetailsControllerTest < ActionController::TestCase
  setup do
    @ubicacion_detail = ubicacion_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ubicacion_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ubicacion_detail" do
    assert_difference('UbicacionDetail.count') do
      post :create, ubicacion_detail: { address: @ubicacion_detail.address, cellphone: @ubicacion_detail.cellphone, fax: @ubicacion_detail.fax, google_map: @ubicacion_detail.google_map, image: @ubicacion_detail.image, name: @ubicacion_detail.name, telephone: @ubicacion_detail.telephone, ubicacion_id: @ubicacion_detail.ubicacion_id }
    end

    assert_redirected_to ubicacion_detail_path(assigns(:ubicacion_detail))
  end

  test "should show ubicacion_detail" do
    get :show, id: @ubicacion_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ubicacion_detail
    assert_response :success
  end

  test "should update ubicacion_detail" do
    put :update, id: @ubicacion_detail, ubicacion_detail: { address: @ubicacion_detail.address, cellphone: @ubicacion_detail.cellphone, fax: @ubicacion_detail.fax, google_map: @ubicacion_detail.google_map, image: @ubicacion_detail.image, name: @ubicacion_detail.name, telephone: @ubicacion_detail.telephone, ubicacion_id: @ubicacion_detail.ubicacion_id }
    assert_redirected_to ubicacion_detail_path(assigns(:ubicacion_detail))
  end

  test "should destroy ubicacion_detail" do
    assert_difference('UbicacionDetail.count', -1) do
      delete :destroy, id: @ubicacion_detail
    end

    assert_redirected_to ubicacion_details_path
  end
end
