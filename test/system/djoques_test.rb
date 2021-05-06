require "application_system_test_case"

class DjoquesTest < ApplicationSystemTestCase
  setup do
    @djoque = djoques(:one)
  end

  test "visiting the index" do
    visit djoques_url
    assert_selector "h1", text: "Djoques"
  end

  test "creating a Djoque" do
    visit djoques_url
    click_on "New Djoque"

    fill_in "Date", with: @djoque.date
    fill_in "Djoke", with: @djoque.djoke
    fill_in "Like", with: @djoque.like
    click_on "Create Djoque"

    assert_text "Djoque was successfully created"
    click_on "Back"
  end

  test "updating a Djoque" do
    visit djoques_url
    click_on "Edit", match: :first

    fill_in "Date", with: @djoque.date
    fill_in "Djoke", with: @djoque.djoke
    fill_in "Like", with: @djoque.like
    click_on "Update Djoque"

    assert_text "Djoque was successfully updated"
    click_on "Back"
  end

  test "destroying a Djoque" do
    visit djoques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Djoque was successfully destroyed"
  end
end
