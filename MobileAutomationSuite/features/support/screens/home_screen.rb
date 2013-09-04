class HomeScreen
  include Furter


  button(:menu, :label => 'Menu')
  button(:new_contact, :text => 'New Contact')
  button(:orders, :text => 'Orders')
  button(:alerts, :text => 'Alerts')
  button(:updates, :text => 'Updates')
  button(:order_estimator, :text => 'Order Estimator')
  button(:home, :text => 'Home')
  button(:contacts, :text => 'Contacts')
  button(:announcements, :text => 'Announcements')
  button(:settings, :label => 'Settings')




  def add_contact


    self.new_contact

  end

  def click_menu

    sleep(3)
    touch("view:'UINavigationButton' marked:'menu'")


  end

  def click_order_estimator

    self.order_estimator

  end

  def click_orders

    self.orders


  end

  def click_alerts

    self.alerts

  end

  def click_updates

    self.updates

  end

  def click_stats

    touch("view:'UILabel' marked:'Stats'")

  end

  def click_contacts

    touch("view:'UILabel' marked:'Contacts'")

  end

























end