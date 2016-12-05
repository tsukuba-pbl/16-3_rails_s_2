require 'test_helper'

class TarotsControllerTest < ActionController::TestCase
  setup do
    @tarot = tarots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tarots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tarot" do
    assert_difference('Tarot.count') do
      post :create, tarot: { content: @tarot.content, name: @tarot.name }
    end

    assert_redirected_to tarot_path(assigns(:tarot))
  end

  test "should show tarot" do
    get :show, id: @tarot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tarot
    assert_response :success
  end

  test "should update tarot" do
    patch :update, id: @tarot, tarot: { content: @tarot.content, name: @tarot.name }
    assert_redirected_to tarot_path(assigns(:tarot))
  end

  test "should destroy tarot" do
    assert_difference('Tarot.count', -1) do
      delete :destroy, id: @tarot
    end

    assert_redirected_to tarots_path
  end
end
