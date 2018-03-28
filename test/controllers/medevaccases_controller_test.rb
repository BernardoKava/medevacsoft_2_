require 'test_helper'

class MedevaccasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medevaccase = medevaccases(:one)
  end

  test "should get index" do
    get medevaccases_url
    assert_response :success
  end

  test "should get new" do
    get new_medevaccase_url
    assert_response :success
  end

  test "should create medevaccase" do
    assert_difference('Medevaccase.count') do
      post medevaccases_url, params: { medevaccase: { catName: @medevaccase.catName, completionDate: @medevaccase.completionDate, currentHospitalAddress: @medevaccase.currentHospitalAddress, currentHospitalName: @medevaccase.currentHospitalName, diagnosis: @medevaccase.diagnosis, dob: @medevaccase.dob, fromCountry: @medevaccase.fromCountry, notes: @medevaccase.notes, patientFname: @medevaccase.patientFname, patientLname: @medevaccase.patientLname, receivingHospitalAddress: @medevaccase.receivingHospitalAddress, receivingHospitalName: @medevaccase.receivingHospitalName, startDate: @medevaccase.startDate, toCountry: @medevaccase.toCountry, treatment: @medevaccase.treatment } }
    end

    assert_redirected_to medevaccase_url(Medevaccase.last)
  end

  test "should show medevaccase" do
    get medevaccase_url(@medevaccase)
    assert_response :success
  end

  test "should get edit" do
    get edit_medevaccase_url(@medevaccase)
    assert_response :success
  end

  test "should update medevaccase" do
    patch medevaccase_url(@medevaccase), params: { medevaccase: { catName: @medevaccase.catName, completionDate: @medevaccase.completionDate, currentHospitalAddress: @medevaccase.currentHospitalAddress, currentHospitalName: @medevaccase.currentHospitalName, diagnosis: @medevaccase.diagnosis, dob: @medevaccase.dob, fromCountry: @medevaccase.fromCountry, notes: @medevaccase.notes, patientFname: @medevaccase.patientFname, patientLname: @medevaccase.patientLname, receivingHospitalAddress: @medevaccase.receivingHospitalAddress, receivingHospitalName: @medevaccase.receivingHospitalName, startDate: @medevaccase.startDate, toCountry: @medevaccase.toCountry, treatment: @medevaccase.treatment } }
    assert_redirected_to medevaccase_url(@medevaccase)
  end

  test "should destroy medevaccase" do
    assert_difference('Medevaccase.count', -1) do
      delete medevaccase_url(@medevaccase)
    end

    assert_redirected_to medevaccases_url
  end
end
