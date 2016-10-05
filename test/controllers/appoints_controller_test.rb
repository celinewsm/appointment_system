require 'test_helper'

class AppointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appoint = appoints(:one)
  end

  test "should get index" do
    get appoints_url
    assert_response :success
  end

  test "should get new" do
    get new_appoint_url
    assert_response :success
  end

  test "should create appoint" do
    assert_difference('Appoint.count') do
      post appoints_url, params: { appoint: { complaint: @appoint.complaint, date: @appoint.date, doctor_id: @appoint.doctor_id, speciality: @appoint.speciality, time_slot: @appoint.time_slot, user_id: @appoint.user_id } }
    end

    assert_redirected_to appoint_url(Appoint.last)
  end

  test "should show appoint" do
    get appoint_url(@appoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_appoint_url(@appoint)
    assert_response :success
  end

  test "should update appoint" do
    patch appoint_url(@appoint), params: { appoint: { complaint: @appoint.complaint, date: @appoint.date, doctor_id: @appoint.doctor_id, speciality: @appoint.speciality, time_slot: @appoint.time_slot, user_id: @appoint.user_id } }
    assert_redirected_to appoint_url(@appoint)
  end

  test "should destroy appoint" do
    assert_difference('Appoint.count', -1) do
      delete appoint_url(@appoint)
    end

    assert_redirected_to appoints_url
  end
end
