require 'test_helper'

class CampaignsToDosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaigns_to_do = campaigns_to_dos(:one)
  end

  test "should get index" do
    get campaigns_to_dos_url
    assert_response :success
  end

  test "should get new" do
    get new_campaigns_to_do_url
    assert_response :success
  end

  test "should create campaigns_to_do" do
    assert_difference('CampaignsToDo.count') do
      post campaigns_to_dos_url, params: { campaigns_to_do: { DueDate: @campaigns_to_do.DueDate, Marketo: @campaigns_to_do.Marketo, Name: @campaigns_to_do.Name, Notes: @campaigns_to_do.Notes, Salesforce: @campaigns_to_do.Salesforce } }
    end

    assert_redirected_to campaigns_to_do_url(CampaignsToDo.last)
  end

  test "should show campaigns_to_do" do
    get campaigns_to_do_url(@campaigns_to_do)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaigns_to_do_url(@campaigns_to_do)
    assert_response :success
  end

  test "should update campaigns_to_do" do
    patch campaigns_to_do_url(@campaigns_to_do), params: { campaigns_to_do: { DueDate: @campaigns_to_do.DueDate, Marketo: @campaigns_to_do.Marketo, Name: @campaigns_to_do.Name, Notes: @campaigns_to_do.Notes, Salesforce: @campaigns_to_do.Salesforce } }
    assert_redirected_to campaigns_to_do_url(@campaigns_to_do)
  end

  test "should destroy campaigns_to_do" do
    assert_difference('CampaignsToDo.count', -1) do
      delete campaigns_to_do_url(@campaigns_to_do)
    end

    assert_redirected_to campaigns_to_dos_url
  end
end
