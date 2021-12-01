require "test_helper"

class ComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compra = compras(:one)
  end

  test "should get index" do
    get compras_url, as: :json
    assert_response :success
  end

  test "should create compra" do
    assert_difference('Compra.count') do
      post compras_url, params: { compra: { fecha: @compra.fecha, total: @compra.total } }, as: :json
    end

    assert_response 201
  end

  test "should show compra" do
    get compra_url(@compra), as: :json
    assert_response :success
  end

  test "should update compra" do
    patch compra_url(@compra), params: { compra: { fecha: @compra.fecha, total: @compra.total } }, as: :json
    assert_response 200
  end

  test "should destroy compra" do
    assert_difference('Compra.count', -1) do
      delete compra_url(@compra), as: :json
    end

    assert_response 204
  end
end
