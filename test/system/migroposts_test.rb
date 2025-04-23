require "application_system_test_case"

class MigropostsTest < ApplicationSystemTestCase
  setup do
    @migropost = migroposts(:one)
  end

  test "visiting the index" do
    visit migroposts_url
    assert_selector "h1", text: "Migroposts"
  end

  test "should create migropost" do
    visit migroposts_url
    click_on "New migropost"

    fill_in "Content", with: @migropost.content
    fill_in "User", with: @migropost.user_id
    click_on "Create Migropost"

    assert_text "Migropost was successfully created"
    click_on "Back"
  end

  test "should update Migropost" do
    visit migropost_url(@migropost)
    click_on "Edit this migropost", match: :first

    fill_in "Content", with: @migropost.content
    fill_in "User", with: @migropost.user_id
    click_on "Update Migropost"

    assert_text "Migropost was successfully updated"
    click_on "Back"
  end

  test "should destroy Migropost" do
    visit migropost_url(@migropost)
    click_on "Destroy this migropost", match: :first

    assert_text "Migropost was successfully destroyed"
  end
end
