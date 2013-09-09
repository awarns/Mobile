class ContactsScreen
  include Furter

  button(:done, :text => 'Done')
  table(:table_contacts, :label => 'Empty list')
  button(:order_history, :label => 'glyph cart')
  button(:add_note, :label => 'glyph notes')
  button(:more, :label => 'More')
  button(:edit, :label => 'Edit')


  def check_order_history

    self.order_history

  end

  def add_a_note

    self.add_note
    sleep(4)
    type_into_keyboard('Automation Test')
    self.done

  end

  def add_new_contact(fname, lname)


    sleep(2)


    touch("view:'UITextFieldLabel' marked:'Jessica")
    sleep(2)
    type_into_keyboard("#{fname}")
    type_into_keyboard("#{lname}")
    type_into_keyboard('awarns@thrityonegifts.com')
    type_into_keyboard('4192023773')
    tables_scrolled = frankly_map("tableView", "scrollToBottom")
    raise "no table could be found to scroll" if tables_scrolled.empty?
    sleep(2)
    touch("view:'UITextFieldLabel' marked:'Street Address'")
    type_into_keyboard('205 N. Nelson Road')
    sleep(2)
    tables_scrolled = frankly_map("tableView", "scrollToBottom")
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

  end

  def verify_note

    sleep(2)
    view_with_mark_exists('Automation Test').should == true

  end

  def edit_contact

    self.more
    sleep(5)
    view_with_mark_exists('awarns@thirtyonegifts.com')
    view_with_mark_exists('Colin Cowherd')
    view_with_mark_exists('205 N. Nelson RoadColumbus, OH 43219')
    view_with_mark_exists('(419) 202-3773')
    sleep(5)
    self.edit
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

end