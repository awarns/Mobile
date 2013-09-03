When(/^I View A Specific Order$/) do

  navigate_to(OrderHistoryScreen, :using => :order_history).click_order


end

Then(/^I should See the Order Summary$/) do

  on(OrderHistoryScreen).verify_order_summary


end

When(/^I Select the Guests View$/) do

  on(OrderHistoryScreen).click_guests

end

When(/^I View A Guests Information$/) do

  navigate_to(GuestOrderScreen, :using =>:order_history)

end