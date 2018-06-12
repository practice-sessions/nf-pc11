var Appointment = createReactClass({

  render: function() {
    return (
      <React.Fragment>
        <div>
         <h4>{this.props.appointment.title}</h4>
         <p>{this.props.appointment.apt_time}</p>
        </div>
      </React.Fragment>
    );
  }
});

