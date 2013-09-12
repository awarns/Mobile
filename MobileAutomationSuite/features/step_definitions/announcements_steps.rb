When(/^I View My Announcements$/) do

  navigate_all(:using => :announcements)

end

Then(/^I should See the Announcements Screen$/) do

  on(AnnouncementsScreen).verify_announcements

end