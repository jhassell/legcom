require 'test_helper'

class CommitteeOfficesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @committee_office = committee_offices(:one)
  end

  test "should get index" do
    get committee_offices_url
    assert_response :success
  end

  test "should get new" do
    get new_committee_office_url
    assert_response :success
  end

  test "should create committee_office" do
    assert_difference('CommitteeOffice.count') do
      post committee_offices_url, params: { committee_office: { name: @committee_office.name } }
    end

    assert_redirected_to committee_office_url(CommitteeOffice.last)
  end

  test "should show committee_office" do
    get committee_office_url(@committee_office)
    assert_response :success
  end

  test "should get edit" do
    get edit_committee_office_url(@committee_office)
    assert_response :success
  end

  test "should update committee_office" do
    patch committee_office_url(@committee_office), params: { committee_office: { name: @committee_office.name } }
    assert_redirected_to committee_office_url(@committee_office)
  end

  test "should destroy committee_office" do
    assert_difference('CommitteeOffice.count', -1) do
      delete committee_office_url(@committee_office)
    end

    assert_redirected_to committee_offices_url
  end
end
