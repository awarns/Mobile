Feature: Order History Screen
  As a consultant
  I want the ability to view previously submitted orders
  on the Order History Screen

Background: I log into the app


Scenario: View Order History Summary
  When I View A Specific Order
  Then I should See the Order Summary

Scenario: View Order History Guests
  When I View A Specific Order
  And I Select the Guests View

Scenario: View Party Guests Info
  When I View A Guests Information



