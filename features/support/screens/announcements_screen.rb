class AnnouncementsScreen
  include Furter

  def verify_announcements

    sleep(3)
    view_with_mark_exists('Announcements').should == true


  end


end