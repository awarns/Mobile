When(/^I Search For Item "([^"]*)"$/) do |item|

  navigate_to(ItemScreen, :using => :order_estimator).search_for_item('item' => item)
  on(ItemScreen).pick_color

end

Then(/^I Should See The Item Details Page$/) do

  on(ItemScreen).item_exists

end

When(/^I Personalize using Embroidery$/) do


  on(ItemScreen).personalize_with_embroidery
  on(ItemScreen).add_to_cart

end

When(/^I Personalize using Icon-It No Text$/) do

  on(ItemScreen).personalize_with_icon_it_no_text
  on(ItemScreen).add_to_cart

end

Then(/^I Verify the Item is in My Cart with Totals of, Product :"([^"]*)",Shipping: "([^"]*)",Tax :"([^"]*)", Total: "([^"]*)"$/) do |product, shipping, tax, total|

  on(ItemScreen).verify_totals product, shipping, tax, total

end

When(/^I Personalize using Icon-It With Text$/) do

  on(ItemScreen).personalize_with_icon_it_with_text
  on(ItemScreen).add_to_cart

end

When(/^I Personalize using None$/) do

  on(ItemScreen).personalize_with_none
  on(ItemScreen).add_to_cart

end

When(/^I Verify the Continue Shopping Button is Working$/) do

  navigate_all(:using => :order_estimator)

end

Then(/^I Should See The Item Search Screen$/) do

  on(ItemScreen).item_search_screen_is_present

end