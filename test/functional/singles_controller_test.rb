require 'test_helper'

class SinglesControllerTest < ActionController::TestCase
  setup do
    @single = singles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:singles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create single" do
    assert_difference('Single.count') do
      post :create, single: { created: @single.created, info: @single.info, title: @single.title, year: @single.year }
    end

    assert_redirected_to single_path(assigns(:single))
  end

  test "should show single" do
    get :show, id: @single
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @single
    assert_response :success
  end

  test "should update single" do
    put :update, id: @single, single: { created: @single.created, info: @single.info, title: @single.title, year: @single.year }
    assert_redirected_to single_path(assigns(:single))
  end

  test "should destroy single" do
    assert_difference('Single.count', -1) do
      delete :destroy, id: @single
    end

    assert_redirected_to singles_path
  end
end
