Feature: Add A New Contact

  As a Consultant
  I want to be able add a New Contact from the Home Screen
  as well as search for existing consultants

  Background: Login to the App



  Scenario: Add a New Contact
    When I Add a New Contact named "Automation" "Lewis"
    Then I should See "Automation Lewis" in My Contact List

  Scenario: Check Contact Order History
    When I View a Guests Information
    And I Check Their Order History






