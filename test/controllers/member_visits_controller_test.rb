require 'test_helper'

class MemberVisitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_visit = member_visits(:one)
  end

  test "should get index" do
    get member_visits_url
    assert_response :success
  end

  test "should get new" do
    get new_member_visit_url
    assert_response :success
  end

  test "should create member_visit" do
    assert_difference('MemberVisit.count') do
      post member_visits_url, params: { member_visit: { date_of_visit: @member_visit.date_of_visit, member_id: @member_visit.member_id, shake_provided: @member_visit.shake_provided } }
    end

    assert_redirected_to member_visit_url(MemberVisit.last)
  end

  test "should show member_visit" do
    get member_visit_url(@member_visit)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_visit_url(@member_visit)
    assert_response :success
  end

  test "should update member_visit" do
    patch member_visit_url(@member_visit), params: { member_visit: { date_of_visit: @member_visit.date_of_visit, member_id: @member_visit.member_id, shake_provided: @member_visit.shake_provided } }
    assert_redirected_to member_visit_url(@member_visit)
  end

  test "should destroy member_visit" do
    assert_difference('MemberVisit.count', -1) do
      delete member_visit_url(@member_visit)
    end

    assert_redirected_to member_visits_url
  end
end
