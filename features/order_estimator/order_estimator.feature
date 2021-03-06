Feature: Order Estimator
  As a consultant
  I want the capability to enter an order to estimate my total costs
  and send the order to one of my contacts



  Background: Log in to the app


  Scenario: Personalize Item with Embroidery and Add it To Cart
    When I Search For Item "3000"
    And I Personalize using Embroidery
    Then I Verify the Item is in My Cart with Totals of, Product :"$25.00",Shipping: "$6.00",Tax :"$2.09", Total: "33.09"

  Scenario: Personalize Item with Icon-It Without Text and Add it To Cart
    When I Search For Item "3000"
    And I Personalize using Icon-It No Text
    Then I Verify the Item is in My Cart with Totals of, Product :"$50.00",Shipping: "$8.00",Tax :"$3.92", Total: "$61.92"

  Scenario: Personalize Item with Icon-It With Text and Add it To Cart
    When I Search For Item "3000"
    And I Personalize using Icon-It With Text
    Then I Verify the Item is in My Cart with Totals of, Product :"$78.00",Shipping: "$10.24",Tax :"$5.96", Total: "$94.20"

  Scenario: Personalize Item with None and Add it To Cart
    When I Search For Item "3000"
    And I Personalize using None
    Then I Verify the Item is in My Cart with Totals of, Product :"$96.00",Shipping: "$11.68",Tax :"$7.27", Total: "$114.95"

  Scenario: Clear All Items From Cart
    When I Clear All the Items From My Cart
    Then I Verify the Item is in My Cart with Totals of, Product :"$0.00",Shipping: "$0.00",Tax :"$0.00", Total: "$0.00"

  Scenario: Continue Shopping
    When I Verify the Continue Shopping Button is Working
    Then I Should See The Item Search Screen

  Scenario: Edit Item Already in My Cart
    When I Edit an Existing Item in My Cart
    Then I Verify the Item is in My Cart with Totals of, Product :"$25.00",Shipping: "$6.00",Tax :"$2.09", Total: "33.09"

  Scenario: Delete Item from Item Details Page
    When I Delete an Item From the Details Page of My Cart
    Then I Verify the Item is in My Cart with Totals of, Product :"$0.00",Shipping: "$0.00",Tax :"$0.00", Total: "$0.00"

  Scenario: Email Order
    When I Email A Customer Their Estimated Order
    Then I Should Receive an Email












