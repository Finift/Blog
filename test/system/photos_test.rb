require "application_system_test_case"

class photosTest < ApplicationSystemTestCase
  setup do
    @photo = photos(:one)
  end

  test "visiting the index" do
    visit photos_url
    assert_selector "h1", text: "photos"
  end

  test "should create photo" do
    visit photos_url
    click_on "New photo"

    fill_in "Content", with: @photo.content
    fill_in "Title", with: @photo.title
    fill_in "User", with: @photo.user_id
    click_on "Create photo"

    assert_text "photo was successfully created"
    click_on "Back"
  end

  test "should update photo" do
    visit photo_url(@photo)
    click_on "Edit this photo", match: :first

    fill_in "Content", with: @photo.content
    fill_in "Title", with: @photo.title
    fill_in "User", with: @photo.user_id
    click_on "Update photo"

    assert_text "photo was successfully updated"
    click_on "Back"
  end

  test "should destroy photo" do
    visit photo_url(@photo)
    click_on "Destroy this photo", match: :first

    assert_text "photo was successfully destroyed"
  end
end
