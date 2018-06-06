class AppointmentsController < ApplicationController
  def index
    # define appointments method to GET appointments (or events) and display in ascending (ASC) time order
    @appointments = Appointment.order('apt_time ASC')
    # define appointment as a new record
    @appointment = Appointment.new
  end


# POST request to appointments (or events)
  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to :root
  end
  
  
  private
  def appointment_params
    params.require(:appointment).permit(:title, :apt_time)
  end  

end