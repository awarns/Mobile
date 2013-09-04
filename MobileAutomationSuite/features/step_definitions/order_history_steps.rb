When(/^I View A Specific Party Order$/) do

  navigate_to(OrderHistoryScreen, :using => :order_history).click_party_order

end

Then(/^I should See the Order Summary for Party Orders$/) do

  on(OrderHistoryScreen).verify_order_summary_party

end

Then(/^I should See the Order Summary for Retail Orders$/) do

  on(OrderHistoryScreen).verify_order_summary_retail

end

When(/^I Select the Guests View$/) do

  on(OrderHistoryScreen).click_guests

end


Then(/^I should See all the Guests on the Party Order$/) do

  on(OrderHistoryScreen).verify_guests_party

end

Then(/^I should See all the Guests on the Retail Order$/) do

  on(OrderHistoryScreen).verify_guests_retail

end

When(/^I View "([^"]*)"'s Party Guest Information$/) do |name|

  navigate_to(OrderHistoryScreen, :using => :order_history).click_party_order
  on(OrderHistoryScreen).click_guests
  on(OrderHistoryScreen).select_guest name

end

Then(/^I should See That Specific Guests Order Details$/) do

  on(GuestOrderScreen).verify_information_on_summary
  on(GuestOrderScreen).click_items
  on(GuestOrderScreen).verify_items


end

When(/^I View A Specific Retail Order$/) do

  navigate_to(OrderHistoryScreen, :using => :order_history).click_retail_order

end

When(/^I View "([^"]*)"'s Retail Guests Information$/) do |name|

  navigate_to(OrderHistoryScreen, :using => :order_history).click_retail_order
  on(OrderHistoryScreen).click_guests
  on(OrderHistoryScreen).select_guest name

end

When(/^I Email The Guest$/) do

   on(GuestOrderScreen).email_guest

end