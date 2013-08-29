class LoginScreen
  include Furter

  text(:username_field, :label => "Your Consultant ID")
  button(:login_button, :text => 'Log In')

  def login(id,password)


    self.username_field.send('10080')
    self.login_button





  end


end