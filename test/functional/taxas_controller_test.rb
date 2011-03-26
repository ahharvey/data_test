require 'test_helper'

class TaxasControllerTest < ActionController::TestCase
  setup do
    @taxa = taxas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxa" do
    assert_difference('Taxa.count') do
      post :create, :taxa => @taxa.attributes
    end

    assert_redirected_to taxa_path(assigns(:taxa))
  end

  test "should show taxa" do
    get :show, :id => @taxa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @taxa.to_param
    assert_response :success
  end

  test "should update taxa" do
    put :update, :id => @taxa.to_param, :taxa => @taxa.attributes
    assert_redirected_to taxa_path(assigns(:taxa))
  end

  test "should destroy taxa" do
    assert_difference('Taxa.count', -1) do
      delete :destroy, :id => @taxa.to_param
    end

    assert_redirected_to taxas_path
  end
end
