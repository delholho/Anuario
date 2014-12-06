require 'test_helper'

class PaginasControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get sobre" do
    get :sobre
    assert_response :success
  end

  test "should get contato" do
    get :contato
    assert_response :success
  end

  test "should get cadastro" do
    get :cadastro
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
