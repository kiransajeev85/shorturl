require "application_system_test_case"

class ShortsTest < ApplicationSystemTestCase
  setup do
    @short = shorts(:one)
  end

  test "visiting the index" do
    visit shorts_url
    assert_selector "h1", text: "Shorts"
  end

  test "creating a Short" do
    visit shorts_url
    click_on "New Short"

    fill_in "Long url", with: @short.long_url
    fill_in "Short url", with: @short.short_url
    click_on "Create Short"

    assert_text "Short was successfully created"
    click_on "Back"
  end

  test "updating a Short" do
    visit shorts_url
    click_on "Edit", match: :first

    fill_in "Long url", with: @short.long_url
    fill_in "Short url", with: @short.short_url
    click_on "Update Short"

    assert_text "Short was successfully updated"
    click_on "Back"
  end

  test "destroying a Short" do
    visit shorts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Short was successfully destroyed"
  end
end
