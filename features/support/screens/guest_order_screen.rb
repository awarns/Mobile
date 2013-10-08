class GuestOrderScreen
  include Furter


  def click_items

    touch("view:'UIImageView' marked:'btn-right-up.png'")

  end


  def verify_information_on_summary


    view_with_mark_exists('Status').should == true
    view_with_mark_exists('Product Total').should == true
    view_with_mark_exists('Shipping').should == true
    view_with_mark_exists('Tax').should == true
    view_with_mark_exists('$107.00').should == true
    view_with_mark_exists('$12.56').should == true
    view_with_mark_exists('$8.07').should == true
    view_with_mark_exists('$127.63').should == true

  end


  def verify_items

    view_with_mark_exists('Organizing Utility Tote - Big Dot').should == true
    view_with_mark_exists('Cindy Tote - Black (Corduroy)').should == true
    view_with_mark_exists('$30.00').should == true
    view_with_mark_exists('$70.00').should == true
    view_with_mark_exists('$7.00').should == true
    view_with_mark_exists('$0.00').should == true
    view_with_mark_exists('Qty: 1').should == true
    view_with_mark_exists('Add Personalization').should == true

  end

  def email_guest

    touch("view:'UINavigationButton' marked:'Action'")
    sleep(3)
    touch("view:'UIAlertButton' marked:'email'")
    sleep(5)

  end


end