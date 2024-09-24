class InterviewerProfilesController < ApplicationController
  before_action :set_interviewer_profile, only: %i[ show update destroy ]

  # GET /interviewer_profiles
  def index
    @interviewer_profiles = InterviewerProfile.all

    render json: @interviewer_profiles
  end

  # GET /interviewer_profiles/1
  def show
    render json: @interviewer_profile
  end

  # POST /interviewer_profiles
  def create
    @interviewer_profile = InterviewerProfile.new(interviewer_profile_params)

    if @interviewer_profile.save
      render json: @interviewer_profile, status: :created, location: @interviewer_profile
    else
      render json: @interviewer_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interviewer_profiles/1
  def update
    if @interviewer_profile.update(interviewer_profile_params)
      render json: @interviewer_profile
    else
      render json: @interviewer_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /interviewer_profiles/1
  def destroy
    @interviewer_profile.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interviewer_profile
      @interviewer_profile = InterviewerProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def interviewer_profile_params
      params.fetch(:interviewer_profile, {})
    end
end
