var Appointments = createReactClass({

  render: function() {
    return (
      <React.Fragment>
        <div>
          {this.props.appointments.map(function(appointment) {
            return (
              <Appointment appointment={appointment} />
            )
          })}
        </div>
      </React.Fragment>
    );
  }
});

