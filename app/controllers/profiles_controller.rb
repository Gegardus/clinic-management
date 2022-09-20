class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def create
      @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to new_profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      redirect_to @profile
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :patient_id, :doctor_id, :admin_id, :profileable_type, :profileable_id)
  end
end
