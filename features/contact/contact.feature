Feature: Add A New Contact

  As a Consultant
  I want to be able add a New Contact from the Home Screen
  as well as search for existing consultants


  Background: Login to the App

  Scenario: Add a New Contact
    When I Add a New Contact named "Colin" "Cowherd"
    Then I should See "Colin Cowherd" in My Contact List

  Scenario: Check Contact Order History
    When I View a Guests Information
    And I Check Their Order History
    Then I Should See The Order History Screen

  Scenario: Add A Note
    When I View a Guests Information
    And I Add A Note To a Contact
    Then I Should See The Added Note

  Scenario: Email A Contact
    When I View a Guests Information
    And I Email the Contact
    Then I Should Receive an Email

  Scenario: View Google Map Location
    When I View a Guests Information
    And I Click on Their Address Info
    Then I should see Google Maps

  Scenario: Edit an existing Contact
    When I View a Guests Information
    And Edit Their Contact Information
    Then I Should See The Edited Contact









