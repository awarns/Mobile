When(/^I Add a New Contact named "([^"]*)" "([^"]*)"$/) do |fname, lname|

  navigate_to(ContactsScreen, :using => :contacts).add_new_contact fname, lname


end

Then(/^I should See "([^"]*)" in My Contact List$/) do |name|

  on(ContactsScreen).search_contact name



end

When(/^I View a Guests Information$/) do

  navigate_to(ContactsScreen, :using => :search_contacts).search_contact 'Colin Cowherd'


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

When(/^I Email the Contact$/) do

  on(ContactsScreen).email_contact

end

When(/^I Click on Their Address Info$/) do

  on(ContactsScreen).view_address_on_google_maps

end

Then(/^I should see Google Maps$/) do

  on(ContactsScreen).verify_google_maps

end