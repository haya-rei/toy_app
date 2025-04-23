require "test_helper"

class MigropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @migropost = migroposts(:one)
  end

  test "should get index" do
    get migroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_migropost_url
    assert_response :success
  end

  test "should create migropost" do
    assert_difference("Migropost.count") do
      post migroposts_url, params: { migropost: { content: @migropost.content, user_id: @migropost.user_id } }
    end

    assert_redirected_to migropost_url(Migropost.last)
  end

  test "should show migropost" do
    get migropost_url(@migropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_migropost_url(@migropost)
    assert_response :success
  end

  test "should update migropost" do
    patch migropost_url(@migropost), params: { migropost: { content: @migropost.content, user_id: @migropost.user_id } }
    assert_redirected_to migropost_url(@migropost)
  end

  test "should destroy migropost" do
    assert_difference("Migropost.count", -1) do
      delete migropost_url(@migropost)
    end

    assert_redirected_to migroposts_url
  end
end
