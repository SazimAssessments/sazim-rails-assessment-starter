require "test_helper"

class StatusCheckControllerTest < ActionDispatch::IntegrationTest
  test "should get status" do
    get status_url
    assert_response :success

    json_response = JSON.parse(response.body)

    assert_response :ok, json_response["status"]
    assert json_response["timestamp"].present?
  end
end
