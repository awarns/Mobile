class GuestOrderScreen
  include Furter


  def verify_information_on_summary

    wait_for_element_to_exist("tableView view marked:'Status'")
    wait_for_element_to_exist("tableView view marked:'Product Total'")
    wait_for_element_to_exist("tableView view marked:'Shipping'")
    wait_for_element_to_exist("tableView view marked:'Tax'")


  end


  def click_items

    touch("view:'UIImageView' marked:'btn-right-up.png'")

  end

  def verify_information_on_items

    puts 'hey'
    #need to figure out data to verify and how to do it

  end


end