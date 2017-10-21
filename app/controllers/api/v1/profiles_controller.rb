class Api::V1::ProfilesController < Api::ApiController
  def show
    profile = Profile.find(params[:id])

    render json: profile
  end
end
