When(/^I View My Alerts$/) do

 navigate_all(:using => :alerts)

end

Then(/^I Should See the Alerts Screen$/) do

 on(AlertsScreen).verify_alerts

end