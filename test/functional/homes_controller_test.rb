require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  setup do
    @home = homes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home" do
    assert_difference('Home.count') do
      post :create, home: { icon_description_1: @home.icon_description_1, icon_description_2: @home.icon_description_2, icon_description_3: @home.icon_description_3, icon_description_4: @home.icon_description_4, icon_title_1: @home.icon_title_1, icon_title_2: @home.icon_title_2, icon_title_3: @home.icon_title_3, icon_title_4: @home.icon_title_4, slide_image_1: @home.slide_image_1, slide_image_2: @home.slide_image_2, slide_image_3: @home.slide_image_3, slide_image_4: @home.slide_image_4 }
    end

    assert_redirected_to home_path(assigns(:home))
  end

  test "should show home" do
    get :show, id: @home
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home
    assert_response :success
  end

  test "should update home" do
    put :update, id: @home, home: { icon_description_1: @home.icon_description_1, icon_description_2: @home.icon_description_2, icon_description_3: @home.icon_description_3, icon_description_4: @home.icon_description_4, icon_title_1: @home.icon_title_1, icon_title_2: @home.icon_title_2, icon_title_3: @home.icon_title_3, icon_title_4: @home.icon_title_4, slide_image_1: @home.slide_image_1, slide_image_2: @home.slide_image_2, slide_image_3: @home.slide_image_3, slide_image_4: @home.slide_image_4 }
    assert_redirected_to home_path(assigns(:home))
  end

  test "should destroy home" do
    assert_difference('Home.count', -1) do
      delete :destroy, id: @home
    end

    assert_redirected_to homes_path
  end
end
