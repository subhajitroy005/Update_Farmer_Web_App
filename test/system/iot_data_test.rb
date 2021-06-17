require "application_system_test_case"

class IotDataTest < ApplicationSystemTestCase
  setup do
    @iot_datum = iot_data(:one)
  end

  test "visiting the index" do
    visit iot_data_url
    assert_selector "h1", text: "Iot Data"
  end

  test "creating a Iot datum" do
    visit iot_data_url
    click_on "New Iot Datum"

    fill_in "Hum", with: @iot_datum.hum
    fill_in "Temp", with: @iot_datum.temp
    click_on "Create Iot datum"

    assert_text "Iot datum was successfully created"
    click_on "Back"
  end

  test "updating a Iot datum" do
    visit iot_data_url
    click_on "Edit", match: :first

    fill_in "Hum", with: @iot_datum.hum
    fill_in "Temp", with: @iot_datum.temp
    click_on "Update Iot datum"

    assert_text "Iot datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Iot datum" do
    visit iot_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Iot datum was successfully destroyed"
  end
end
