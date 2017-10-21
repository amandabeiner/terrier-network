class Api::V1::ProfilesController < Api::ApiController
  def show
    profile = Profile.find(params[:id])

    render json: profile
  end

  def create
    profile = Profile.new(create_params)

    if profile.save
      render json: profile
    else
      render_object_errors(profile)
    end
  end

  def update
    profile = Profile.find(params[:id])

    if profile.update(update_params)
      render json: profile
    else
      render_object_errors(profile)
    end
  end

  private 

  def create_params
    params.require(:profile).permit(:first_name, :last_name, :email, :role, :contact_permissions)
  end

  def update_params
    params.permit(:id, :first_name, :last_name, :email, :role, :contact_permissions)
  end
end
