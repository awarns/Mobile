When(/^I Add a New Contact$/) do

  on(HomeScreen).new_contact
  on(ContactScreen).add_new_contact
  on(HomeScreen).click_menu


end

