When(/^I Add a New Contact$/) do



  navigate_all(:using => :contacts)


end

Then(/^I should See Her in My Contact List$/) do

  on(ContactsScreen).verify_contact_is_in_list

end