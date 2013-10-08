class BusinessUpdatesScreen
  include Furter

  button(:products, :label => 'Products')
  button(:supplies, :label => 'Supplies')
  button(:shipping, :label => 'Shipping', :index => 1)

  def click_products

    self.products

  end

  def click_supplies

    touch "view:'UIButton' marked:'Supplies' index:1"

  end

  def click_shipping

    touch "view:'UIButton' marked:'Shipping' index:1"

  end

  def verify_products_tab


    sleep(4)
    view_with_mark_exists('Back Ordered Items').should == true
    view_with_mark_exists('Discontinued Items').should == true
    view_with_mark_exists('Low Inventory Items').should == true
    view_with_mark_exists('Stop Sell Items').should == true


  end

  def verify_supplies_tab


    sleep(4)
    view_with_mark_exists('Back Ordered Items').should == true
    view_with_mark_exists('Discontinued Items').should == true
    view_with_mark_exists('Low Inventory Items').should == true
    view_with_mark_exists('Stop Sell Items').should == true


  end

  def verify_shipping_tab

    view_with_mark_exists('Order Date').should == true

  end



end