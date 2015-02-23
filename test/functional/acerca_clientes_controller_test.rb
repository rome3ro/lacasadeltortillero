require 'test_helper'

class AcercaClientesControllerTest < ActionController::TestCase
  setup do
    @acerca_cliente = acerca_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acerca_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acerca_cliente" do
    assert_difference('AcercaCliente.count') do
      post :create, acerca_cliente: { image: @acerca_cliente.image }
    end

    assert_redirected_to acerca_cliente_path(assigns(:acerca_cliente))
  end

  test "should show acerca_cliente" do
    get :show, id: @acerca_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acerca_cliente
    assert_response :success
  end

  test "should update acerca_cliente" do
    put :update, id: @acerca_cliente, acerca_cliente: { image: @acerca_cliente.image }
    assert_redirected_to acerca_cliente_path(assigns(:acerca_cliente))
  end

  test "should destroy acerca_cliente" do
    assert_difference('AcercaCliente.count', -1) do
      delete :destroy, id: @acerca_cliente
    end

    assert_redirected_to acerca_clientes_path
  end
end
