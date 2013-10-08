class LoginScreen
  include Furter


  button(:login_button, :text => 'Log In')


  def login

    #text_field_selector =  "view:'UITextFieldLabel' marked:'10080'"
    #touch( text_field_selector )
    #type_into_keyboard(id)
    #type_into_keyboard('testing31')
    self.login_button
    sleep(10)
    view_with_mark_exists('Home').should == true


  end


end