Feature: Order Estimator
  As a consultant I want the capability to
  enter an order to estimate my total costs

  Background: Log in to the app


  Scenario: Search For Items
    When I Search For Item "3000"
    Then I Should See The Item Details Page


  Scenario: Personalize Item
    When I Search For Item "3000"
    And I Personalize using Embroidery




