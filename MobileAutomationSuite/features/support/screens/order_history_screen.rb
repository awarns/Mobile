class OrderHistoryScreen
  include Furter


  def click_party_order

    touch ("view:'UINavigationButton' marked:'glyph find'")
    sleep(3)
    wait_for_and_touch ("view:'UITextFieldLabel' marked:'ALL'")
    sleep(3)
    tables_scrolled = frankly_map( "tableView", "scrollDownRows:", 17 )
    raise "no table could be found to scroll" if tables_scrolled.empty?
    sleep(2)
    touch ("view:'UILabel' marked:'Party Order ($200 min)'")
    sleep(2)
    touch ("view:'UIButtonLabel' marked:'Search'")
    sleep(2)
    touch ("view:'UIImageView' marked:'Orders.png'")

  end

  def click_retail_order

    touch ("view:'UINavigationButton' marked:'glyph find'")
    sleep(3)
    wait_for_and_touch ("view:'UITextFieldLabel' marked:'ALL'")
    sleep(3)
    tables_scrolled = frankly_map( "tableView", "scrollDownRows:", 21 )
    raise "no table could be found to scroll" if tables_scrolled.empty?
    sleep(2)
    touch ("view:'UILabel' marked:'Retail Customer Order'")
    sleep(2)
    touch ("view:'UIButtonLabel' marked:'Search'")
    sleep(2)
    touch ("view:'UIImageView' marked:'Orders.png'")

  end


  def verify_order_summary_party

    sleep(3)
    view_with_mark_exists('Order Number').should == true
    view_with_mark_exists('Retail').should == true
    view_with_mark_exists('Order Type').should == true
    view_with_mark_exists('Host').should == true
    view_with_mark_exists('Volume').should == true
    view_with_mark_exists('Total').should == true
    view_with_mark_exists('Party Order ($200 min)').should == true
    view_with_mark_exists('Party Mobile').should == true
    view_with_mark_exists('$207.00').should == true
    view_with_mark_exists('$242.92').should == true


  end

  def verify_order_summary_retail

    view_with_mark_exists('Order Number').should == true
    view_with_mark_exists('Retail').should == true
    view_with_mark_exists('Order Type').should == true
    view_with_mark_exists('Retail Customer Order').should == true
    view_with_mark_exists('Host').should == true
    view_with_mark_exists('Volume').should == true
    view_with_mark_exists('Total').should == true
    view_with_mark_exists('Andy Mobile').should == true
    view_with_mark_exists('$107.00').should == true
    view_with_mark_exists('$127.63').should == true


  end


  def click_guests


   touch("view:'UIImageView' marked:'btn-right-up.png'")
    #need to figure out data to verify and how to get it

  end

  def verify_guests_party

    view_with_mark_exists('Daniel Craig').should == true
    view_with_mark_exists('Party Mobile').should == true
    view_with_mark_exists('Andy Mobile').should == true
    view_with_mark_exists('0 of 2').should == true
    view_with_mark_exists('0 of 0').should == true
    view_with_mark_exists('0 of 4').should == true


  end

  def verify_guests_retail

    view_with_mark_exists('Andy Mobile').should == true
    view_with_mark_exists('0 of 2').should == true

  end

  def select_guest(name)

    touch ("view:'UILabel' marked:'#{name}'")


  end


end