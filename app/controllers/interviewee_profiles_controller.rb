class IntervieweeProfilesController < ApplicationController
  before_action :set_interviewee_profile, only: %i[ show update destroy ]

  # GET /interviewee_profiles
  def index
    @interviewee_profiles = IntervieweeProfile.all

    render json: @interviewee_profiles
  end

  # GET /interviewee_profiles/1
  def show
    render json: @interviewee_profile
  end

  # POST /interviewee_profiles
  def create
    @interviewee_profile = IntervieweeProfile.new(interviewee_profile_params)

    if @interviewee_profile.save
      render json: @interviewee_profile, status: :created, location: @interviewee_profile
    else
      render json: @interviewee_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interviewee_profiles/1
  def update
    if @interviewee_profile.update(interviewee_profile_params)
      render json: @interviewee_profile
    else
      render json: @interviewee_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /interviewee_profiles/1
  def destroy
    @interviewee_profile.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interviewee_profile
      @interviewee_profile = IntervieweeProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def interviewee_profile_params
      params.fetch(:interviewee_profile, {})
    end
end
