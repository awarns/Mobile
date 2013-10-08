Feature: Business Updates

  As a Consultant
  I want to view Business Updates
  within the Mobile App

Background: Login to the app


  Scenario: View Business Updates Products
    When I View my Business Updates for Products
    Then I should see my business updates products page

  Scenario: View Business Updates Supplies
    When I View my Business Updates for Supplies
    Then I should see my business updates supplies page

  Scenario: View Business Updates Shipping
    When I View my Business Updates for Shipping
    Then I should see my business updates shipping page








