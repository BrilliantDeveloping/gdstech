require 'test_helper'

class V1::ProductsControllerTest < ActionController::TestCase
  setup do
    @v1_product = v1_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v1_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v1_product" do
    assert_difference('V1::Product.count') do
      post :create, v1_product: { name: @v1_product.name, permalink: @v1_product.permalink, price: @v1_product.price }
    end

    assert_redirected_to v1_product_path(assigns(:v1_product))
  end

  test "should show v1_product" do
    get :show, id: @v1_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v1_product
    assert_response :success
  end

  test "should update v1_product" do
    patch :update, id: @v1_product, v1_product: { name: @v1_product.name, permalink: @v1_product.permalink, price: @v1_product.price }
    assert_redirected_to v1_product_path(assigns(:v1_product))
  end

  test "should destroy v1_product" do
    assert_difference('V1::Product.count', -1) do
      delete :destroy, id: @v1_product
    end

    assert_redirected_to v1_products_path
  end
end
