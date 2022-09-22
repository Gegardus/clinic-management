class AppointmentsController < ApplicationController
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @appointments = @doctor.appointments
  end

  def show
    @doctor = Doctor.find(params[:doctor_id])
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment = current_user

    if @appointment.save
      redirect_to doctor_path(id: @appointment)
      flash[:notice] = 'Your appointment was successfully created'
    else
      render :new, alert: 'An error has occurred while creating an appintment'
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @doctor = @appointment.doctor
    @appointment.destroy!
    redirect_to appointments_path(id: @author.id), notice: 'Post was deleted successfully!'
  end

  private

  def appointment_params
    params.require(:appointment).permit(:description, :doctor_id, :patient_id)
  end
end
