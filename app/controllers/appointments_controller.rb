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
    # Send new latest set of appointments in our response from 
    # the action. No need for the redirect anymore
    @appointments = Appointment.order('apt_time ASC')
  end
  
  
  private
  def appointment_params
    params.require(:appointment).permit(:title, :apt_time)
  end  

end