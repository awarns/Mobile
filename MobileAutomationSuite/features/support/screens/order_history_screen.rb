class OrderHistoryScreen
  include Furter


  def click_order

    touch ("view:'UINavigationButton' marked:'glyph find'")
    sleep(3)
    wait_for_and_touch ("view:'UITextFieldLabel' marked:'ALL'")
    sleep(3)
    tables_scrolled = frankly_map( "tableView", "scrollDownRows:", 12 )
    raise "no table could be found to scroll" if tables_scrolled.empty?
    sleep(2)
    touch ("view:'UILabel' marked:'Party Order ($200 min)'")
    sleep(2)
    touch ("view:'UIButtonLabel' marked:'Search'")
    sleep(2)
    touch ("view:'UIImageView' marked:'Orders.png'")

  end


  def verify_order_summary

    sleep(3)
    wait_for_element_to_exist("tableView view marked:'Order Number'")
    wait_for_element_to_exist("tableView view marked:'Retail'")
    wait_for_element_to_exist("tableView view marked:'Order Type'")
    wait_for_element_to_exist("tableView view marked:'Host'")
    wait_for_element_to_exist("tableView view marked:'Volume'")
    wait_for_element_to_exist("tableView view marked:'Total'")


  end


  def click_guests


   touch("view:'UIImageView' marked:'btn-right-up.png'")
    #need to figure out data to verify and how to get it

  end



end