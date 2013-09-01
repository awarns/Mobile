class HomeScreen
  include Furter


  button(:new_contact, :text => 'New Contact')
  button(:order_estimator, :text => 'Order Estimator')
  button(:menu, :label => 'Menu')


  def add_contact


    self.new_contact

  end

  def click_menu

    touch("view:'UINavigationButton' marked:'menu'")

  end

  def click_order_estimator

    self.order_estimator

  end


end