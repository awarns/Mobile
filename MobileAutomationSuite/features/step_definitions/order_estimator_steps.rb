When(/^I Search For Item "([^"]*)"$/) do |item|


  navigate_to(ItemScreen, :using => :order_estimator).search_for_item item


end

Then(/^I Should See The Item Details Page$/) do


  on(ItemScreen).item_exists



end
When(/^I Personalize using Embroidery$/) do

  on(ItemScreen).personalize_with_embroidery


end

