class ContactScreen
  include Furter

    button(:done, :text => 'Done')



  def add_new_contact

    text_field_selector =  "view:'UITextFieldLabel' marked:'Jessica"
    touch( text_field_selector )
    sleep(2)
    type_into_keyboard('AndyAutomation')
    type_into_keyboard('MobileTest')
    type_into_keyboard('awarns@thrityonegifts.com')
    type_into_keyboard('4192023773')
    self.done

  end




end