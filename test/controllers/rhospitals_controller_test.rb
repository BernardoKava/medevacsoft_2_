require 'test_helper'

class RhospitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rhospital = rhospitals(:one)
  end

  test "should get index" do
    get rhospitals_url
    assert_response :success
  end

  test "should get new" do
    get new_rhospital_url
    assert_response :success
  end

  test "should create rhospital" do
    assert_difference('Rhospital.count') do
      post rhospitals_url, params: { rhospital: { address: @rhospital.address, country: @rhospital.country, email: @rhospital.email, info: @rhospital.info, name: @rhospital.name, phone: @rhospital.phone } }
    end

    assert_redirected_to rhospital_url(Rhospital.last)
  end

  test "should show rhospital" do
    get rhospital_url(@rhospital)
    assert_response :success
  end

  test "should get edit" do
    get edit_rhospital_url(@rhospital)
    assert_response :success
  end

  test "should update rhospital" do
    patch rhospital_url(@rhospital), params: { rhospital: { address: @rhospital.address, country: @rhospital.country, email: @rhospital.email, info: @rhospital.info, name: @rhospital.name, phone: @rhospital.phone } }
    assert_redirected_to rhospital_url(@rhospital)
  end

  test "should destroy rhospital" do
    assert_difference('Rhospital.count', -1) do
      delete rhospital_url(@rhospital)
    end

    assert_redirected_to rhospitals_url
  end
end
