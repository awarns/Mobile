class ContactsScreen
  include Furter


  view(:post, :label => 'Post')
  view(:add_contact, :label => 'Add', :index => 0)
  view(:jessica, :label => 'Jessica')
  view(:street_address, :label => 'Street Address')
  view(:zip_code, :label => 'Zipcode')
  view(:done, :label => 'Done', :index => 1)
  view(:search, :label => 'Search')
  view(:add_note, :label => 'glyph notes')



  def add_a_note

    add_note
    sleep(4)
    type_into_keyboard('Automation Test')
    post

  end

  def add_new_contact(fname, lname)





    add_contact
    sleep(2)
    jessica
    sleep(2)
    type_into_keyboard("#{fname}")
    sleep(1)
    type_into_keyboard("#{lname}")

    email_part_1 = rand(999999999999)

    type_into_keyboard("#{email_part_1}@gmail.com")
    type_into_keyboard('4192023773')
    tables_scrolled = frankly_map("tableView", "scrollToBottom")
    raise "no table could be found to scroll" if tables_scrolled.empty?
    sleep(2)
    street_address
    type_into_keyboard('205 N. Nelson Road')
    sleep(2)
    tables_scrolled = frankly_map("tableView", "scrollToBottom")
    raise "no table could be found to scroll" if tables_scrolled.empty?
    sleep(2)
    zip_code
    type_into_keyboard('43219')

    self.done

  end

  def search_contact(name)

    sleep(4)
    search
    type_into_keyboard("C")
    sleep(2)
    touch("view:'UILabel' marked:'#{name}'")


  end

  def verify_note

    sleep(2)
    view_with_mark_exists('Automation Test').should == true

  end

  def edit_contact

    touch("view:'UIButtonLabel' marked:'Edit'")
    sleep(5)
    view_with_mark_exists('awarns@thirtyonegifts.com')
    view_with_mark_exists('Colin Cowherd')
    view_with_mark_exists('205 N. Nelson RoadColumbus, OH 43219')
    view_with_mark_exists('(419) 202-3773')
    sleep(5)
    touch("view:'UITextFieldLabel' marked:'Colin'")
    sleep(2)
    type_into_keyboard("EditContact")
    self.done

  end

  def verify_edited_contact

    view_with_mark_exists('awarns@thirtyonegifts.com')
    view_with_mark_exists('ColinEditContact Cowherd')
    view_with_mark_exists('205 N. Nelson RoadColumbus, OH 43219')
    view_with_mark_exists('(419) 202-3773')


  end

  def email_contact

   touch("view:'UILabel' marked:'Email'")
   sleep(3)
   view_with_mark_exists('Contact View').should == false

  end

  def view_address_on_google_maps

    touch("view:'UINavigationButton' marked:'More'")
    sleep(3)
    touch("view:'UILabel' marked:'205 N. Nelson Road Columbus, OH 43219'")

  end

  def verify_google_maps

    view_with_mark_exists('Contact Detail').should == false

  end

end