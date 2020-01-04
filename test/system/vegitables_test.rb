require "application_system_test_case"

class VegitablesTest < ApplicationSystemTestCase
  setup do
    @vegitable = vegitables(:one)
  end

  test "visiting the index" do
    visit vegitables_url
    assert_selector "h1", text: "Vegitables"
  end

  test "creating a Vegitable" do
    visit vegitables_url
    click_on "New Vegitable"

    fill_in "Category", with: @vegitable.category_id
    fill_in "Current price", with: @vegitable.current_price
    fill_in "Description", with: @vegitable.description
    fill_in "Image", with: @vegitable.image
    fill_in "Name", with: @vegitable.name
    fill_in "Price", with: @vegitable.price
    fill_in "Quantity", with: @vegitable.quantity
    click_on "Create Vegitable"

    assert_text "Vegitable was successfully created"
    click_on "Back"
  end

  test "updating a Vegitable" do
    visit vegitables_url
    click_on "Edit", match: :first

    fill_in "Category", with: @vegitable.category_id
    fill_in "Current price", with: @vegitable.current_price
    fill_in "Description", with: @vegitable.description
    fill_in "Image", with: @vegitable.image
    fill_in "Name", with: @vegitable.name
    fill_in "Price", with: @vegitable.price
    fill_in "Quantity", with: @vegitable.quantity
    click_on "Update Vegitable"

    assert_text "Vegitable was successfully updated"
    click_on "Back"
  end

  test "destroying a Vegitable" do
    visit vegitables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vegitable was successfully destroyed"
  end
end
