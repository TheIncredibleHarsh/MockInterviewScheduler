require "test_helper"

class InterviewerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interviewer_profile = interviewer_profiles(:one)
  end

  test "should get index" do
    get interviewer_profiles_url, as: :json
    assert_response :success
  end

  test "should create interviewer_profile" do
    assert_difference("InterviewerProfile.count") do
      post interviewer_profiles_url, params: { interviewer_profile: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show interviewer_profile" do
    get interviewer_profile_url(@interviewer_profile), as: :json
    assert_response :success
  end

  test "should update interviewer_profile" do
    patch interviewer_profile_url(@interviewer_profile), params: { interviewer_profile: {  } }, as: :json
    assert_response :success
  end

  test "should destroy interviewer_profile" do
    assert_difference("InterviewerProfile.count", -1) do
      delete interviewer_profile_url(@interviewer_profile), as: :json
    end

    assert_response :no_content
  end
end
