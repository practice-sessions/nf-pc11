class AppointmentsController < ApplicationController
  def index
    # define appointments method to GET appointments (or events) and display in ascending (ASC) time order
    @appointments = Appointment.order('apt_time ASC')
    # define appointment as a new record
    @appointment = Appointment.new
  end
  

end