When(/^I View my Business Updates for Products$/) do

  navigate_all(:using => :business_updates)
  on(BusinessUpdatesScreen).click_products

end

Then(/^I should see my business updates products page$/) do

  on(BusinessUpdatesScreen).verify_products_tab

end

When(/^I View my Business Updates for Supplies$/) do

  navigate_all(:using => :business_updates)
  on(BusinessUpdatesScreen).click_supplies

end

Then(/^I should see my business updates supplies page$/) do

  on(BusinessUpdatesScreen).verify_supplies_tab

end

When(/^I View my Business Updates for Shipping$/) do

  navigate_all(:using => :business_updates)
  on(BusinessUpdatesScreen).click_shipping

end

Then(/^I should see my business updates shipping page$/) do

  on(BusinessUpdatesScreen).verify_shipping_tab

end