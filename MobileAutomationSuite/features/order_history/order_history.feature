Feature: Order History Screen
  As a consultant
  I want the ability to view previously submitted orders
  on the Order History Screen

Background: I log into the app


Scenario: View Order History Summary for Party Order
  When I View A Specific Party Order
  Then I should See the Order Summary for Party Orders

Scenario: View Guests for a Party Order
  When I View A Specific Party Order
  And I Select the Guests View
  Then I should See all the Guests on the Party Order

Scenario: View Guests Info for a Party Order
  When I View "Andy Mobile"'s Party Guest Information
  Then I should See That Specific Guests Order Details

Scenario: View Order History Summary for Retail Order
  When I View A Specific Retail Order
  Then I should See the Order Summary for Retail Orders

Scenario: View Guests for a Retail Order
  When I View A Specific Retail Order
  And I Select the Guests View
  Then I should See all the Guests on the Retail Order

Scenario: View Guests Info for a Retail Order
  When I View "Andy Mobile"'s Retail Guests Information
  Then I should See That Specific Guests Order Details

Scenario: Email Guest
  When I View "Andy Mobile"'s Retail Guests Information
  And I Email The Guest











