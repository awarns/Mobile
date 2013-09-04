class ContactsScreen
  include Furter

    button(:done, :text => 'Done')



  def add_new_contact


    touch( "view:'UITextFieldLabel' marked:'Jessica")
    sleep(2)
    type_into_keyboard("#{@firstname}")
    type_into_keyboard("#{@lastname}")
    type_into_keyboard('awarns@thrityonegifts.com')
    type_into_keyboard('4192023773')
    tables_scrolled = frankly_map( "tableView", "scrollToBottom")
    raise "no table could be found to scroll" if tables_scrolled.empty?
    sleep(2)
    touch("view:'UITextFieldLabel' marked:'Street Address'")
    type_into_keyboard('205 N. Nelson Road')
    sleep(2)
    tables_scrolled = frankly_map( "tableView", "scrollToBottom")
    raise "no table could be found to scroll" if tables_scrolled.empty?
    sleep(2)
    touch("view:'UITextFieldLabel' marked:'Zipcode'")
    type_into_keyboard('43219')

    self.done

  end

  def verify_contact_is_in_list

    sleep(4)
    touch("view:'UITextFieldLabel' marked:'Search'")
    @fullname = "#{@firstname}" + " " + "#{@lastname}"
    type_into_keyboard("#{@fullname}")


  end


end