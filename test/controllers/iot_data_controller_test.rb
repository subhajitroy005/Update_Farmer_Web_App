require "test_helper"

class IotDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iot_datum = iot_data(:one)
  end

  test "should get index" do
    get iot_data_url
    assert_response :success
  end

  test "should get new" do
    get new_iot_datum_url
    assert_response :success
  end

  test "should create iot_datum" do
    assert_difference('IotDatum.count') do
      post iot_data_url, params: { iot_datum: { hum: @iot_datum.hum, temp: @iot_datum.temp } }
    end

    assert_redirected_to iot_datum_url(IotDatum.last)
  end

  test "should show iot_datum" do
    get iot_datum_url(@iot_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_iot_datum_url(@iot_datum)
    assert_response :success
  end

  test "should update iot_datum" do
    patch iot_datum_url(@iot_datum), params: { iot_datum: { hum: @iot_datum.hum, temp: @iot_datum.temp } }
    assert_redirected_to iot_datum_url(@iot_datum)
  end

  test "should destroy iot_datum" do
    assert_difference('IotDatum.count', -1) do
      delete iot_datum_url(@iot_datum)
    end

    assert_redirected_to iot_data_url
  end
end
