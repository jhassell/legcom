require "application_system_test_case"

class CommitteeOfficesTest < ApplicationSystemTestCase
  setup do
    @committee_office = committee_offices(:one)
  end

  test "visiting the index" do
    visit committee_offices_url
    assert_selector "h1", text: "Committee Offices"
  end

  test "creating a Committee office" do
    visit committee_offices_url
    click_on "New Committee Office"

    fill_in "Name", with: @committee_office.name
    click_on "Create Committee office"

    assert_text "Committee office was successfully created"
    click_on "Back"
  end

  test "updating a Committee office" do
    visit committee_offices_url
    click_on "Edit", match: :first

    fill_in "Name", with: @committee_office.name
    click_on "Update Committee office"

    assert_text "Committee office was successfully updated"
    click_on "Back"
  end

  test "destroying a Committee office" do
    visit committee_offices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Committee office was successfully destroyed"
  end
end
