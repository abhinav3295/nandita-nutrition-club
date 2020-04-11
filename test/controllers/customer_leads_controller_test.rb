require 'test_helper'

class CustomerLeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_lead = customer_leads(:one)
  end

  test "should get index" do
    get customer_leads_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_lead_url
    assert_response :success
  end

  test "should create customer_lead" do
    assert_difference('CustomerLead.count') do
      post customer_leads_url, params: { customer_lead: { height_cm: @customer_lead.height_cm, name: @customer_lead.name, phone: @customer_lead.phone, weight_kg: @customer_lead.weight_kg } }
    end

    assert_redirected_to customer_lead_url(CustomerLead.last)
  end

  test "should show customer_lead" do
    get customer_lead_url(@customer_lead)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_lead_url(@customer_lead)
    assert_response :success
  end

  test "should update customer_lead" do
    patch customer_lead_url(@customer_lead), params: { customer_lead: { height_cm: @customer_lead.height_cm, name: @customer_lead.name, phone: @customer_lead.phone, weight_kg: @customer_lead.weight_kg } }
    assert_redirected_to customer_lead_url(@customer_lead)
  end

  test "should destroy customer_lead" do
    assert_difference('CustomerLead.count', -1) do
      delete customer_lead_url(@customer_lead)
    end

    assert_redirected_to customer_leads_url
  end
end
