class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def create
    @doctor = Doctor.new(allowed_params)
    if @doctor.save
      redirect_to @doctor, notice: 'Your job was successful.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private 
  
  def allowed_params
    params.require(:doctor).permit(:doctor_id, profiles_attributes: [:first_name])
  end
end