When(/^I Navigate to the Stats Screen$/) do

  navigate_to(StatsScreen, :using => :stats)


end

Then(/^I should See the Stats Screen$/) do

  on(StatsScreen).screen_verification


end