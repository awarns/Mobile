When(/^I Add a New Contact named "([^"]*)" "([^"]*)"$/) do |fname, lname|

  navigate_to(ContactsScreen, :using => :contacts).add_new_contact fname, lname
  on(HomeScreen).click_menu
  on(HomeScreen).click_contacts

end

Then(/^I should See "([^"]*)" in My Contact List$/) do |name|

  on(ContactsScreen).search_contact name
  on(ContactsScreen).send("table_contacts=", "#{name}")


end

When(/^I View a Guests Information$/) do

  navigate_to(ContactsScreen, :using => :search_contacts).search_contact 'Jenni Abbot'


end

When(/^I Check Their Order History$/) do



end
