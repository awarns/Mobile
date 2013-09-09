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

  navigate_to(ContactsScreen, :using => :search_contacts).search_contact 'Colin Cowherd'
  on(ContactsScreen).send("table_contacts=", 'Colin Cowherd')

end

When(/^I Check Their Order History$/) do


  on(ContactsScreen).check_order_history

end

Then(/^I Should See The Order History Screen$/) do

  on(OrderHistoryScreen).screen_exists

end

When(/^I Add A Note To a Contact$/) do

  on(ContactsScreen).add_a_note

end

Then(/^I Should See The Added Note$/) do

  on(ContactsScreen).verify_note

end

When(/^Edit Their Contact Information$/) do

  on(ContactsScreen).edit_contact

end
Then(/^I Should See The Edited Contact$/) do

  on(ContactsScreen).verify_edited_contact

end