class ContactsScreen
  include Furter

    button(:done, :text => 'Done')
    table(:table_contacts, :label => 'Empty list')


  def add_new_contact(fname,lname)


    touch( "view:'UITextFieldLabel' marked:'Jessica")
    sleep(2)
    type_into_keyboard("#{fname}")
    type_into_keyboard("#{lname}")
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

  def search_contact(name)

    sleep(4)
    touch("view:'UITextFieldLabel' marked:'Search'")
    type_into_keyboard("#{name}")
    sleep(2)
    self.send("table_contacts=", 'Jenni Abbot')



  end


end