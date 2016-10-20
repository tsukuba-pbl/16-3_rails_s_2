require 'test_helper'

class UzsersControllerTest < ActionController::TestCase
  setup do
    @uzser = uzsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uzsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uzser" do
    assert_difference('Uzser.count') do
      post :create, uzser: { name2: @uzser.name2, name3: @uzser.name3, name: @uzser.name }
    end

    assert_redirected_to uzser_path(assigns(:uzser))
  end

  test "should show uzser" do
    get :show, id: @uzser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uzser
    assert_response :success
  end

  test "should update uzser" do
    patch :update, id: @uzser, uzser: { name2: @uzser.name2, name3: @uzser.name3, name: @uzser.name }
    assert_redirected_to uzser_path(assigns(:uzser))
  end

  test "should destroy uzser" do
    assert_difference('Uzser.count', -1) do
      delete :destroy, id: @uzser
    end

    assert_redirected_to uzsers_path
  end
end
