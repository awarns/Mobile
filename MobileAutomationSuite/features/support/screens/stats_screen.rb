class StatsScreen
  include Furter



  def screen_verification


    wait_for_element_to_exist("view:'UIImageView' marked:'bkgd-previousMonth.png'")
    wait_for_element_to_exist("view:'UIImageView' marked:'img-currentmonth'")
    wait_for_element_to_exist("view:'UIImageView' marked:'img-personalVolume'")
    wait_for_element_to_exist("view:'UINavigationItemView' marked:'Stats'")

  end

  def stats_validation

    #need to figure out how to get numbers to compare to.


  end

end