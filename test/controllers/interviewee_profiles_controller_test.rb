require "test_helper"

class IntervieweeProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interviewee_profile = interviewee_profiles(:one)
  end

  test "should get index" do
    get interviewee_profiles_url, as: :json
    assert_response :success
  end

  test "should create interviewee_profile" do
    assert_difference("IntervieweeProfile.count") do
      post interviewee_profiles_url, params: { interviewee_profile: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show interviewee_profile" do
    get interviewee_profile_url(@interviewee_profile), as: :json
    assert_response :success
  end

  test "should update interviewee_profile" do
    patch interviewee_profile_url(@interviewee_profile), params: { interviewee_profile: {  } }, as: :json
    assert_response :success
  end

  test "should destroy interviewee_profile" do
    assert_difference("IntervieweeProfile.count", -1) do
      delete interviewee_profile_url(@interviewee_profile), as: :json
    end

    assert_response :no_content
  end
end
