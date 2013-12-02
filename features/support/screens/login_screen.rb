class LoginScreen
  include Furter


  view(:log_in, :label => 'Log In', :index => 1)


  def login

    touch("view:'UITextFieldLabel' marked:'Your Password'")
    type_into_keyboard('testing31')
    #touch("view:'UILabel' marked:'Log In'")
    sleep(3)
    log_in

  end


end