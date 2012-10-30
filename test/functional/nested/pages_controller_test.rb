require 'test_helper'

class Nested::PagesControllerTest < ActionController::TestCase
  setup do
    @nested_page = nested_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nested_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nested_page" do
    assert_difference('Nested::Page.count') do
      post :create, nested_page: { author: @nested_page.author, text: @nested_page.text }
    end

    assert_redirected_to nested_page_path(assigns(:nested_page))
  end

  test "should show nested_page" do
    get :show, id: @nested_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nested_page
    assert_response :success
  end

  test "should update nested_page" do
    put :update, id: @nested_page, nested_page: { author: @nested_page.author, text: @nested_page.text }
    assert_redirected_to nested_page_path(assigns(:nested_page))
  end

  test "should destroy nested_page" do
    assert_difference('Nested::Page.count', -1) do
      delete :destroy, id: @nested_page
    end

    assert_redirected_to nested_pages_path
  end
end
