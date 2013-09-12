class AlertsScreen
  include Furter


  def verify_alerts

    sleep(3)
    view_with_mark_exists('Alerts').should == true


  end






end