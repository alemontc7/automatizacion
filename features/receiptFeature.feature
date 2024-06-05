Feature: As an online shopper
  I want to receive a receipt after placing my order 
  So I can have a record of my purchase

Background:
  Given I am on the online catalog
  When I click on the button "Enter GMO OnLine"

Scenario Outline: Fill the form with the users data
  And I fill in the input box of the product "<product>" with "<quantity>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | John Doe           |
    | Address     | 123 Elm Street     |
    | City        | Springfield        |
    | State       | IL                 |
    | Zip         | 30009               |
    | Phone       | 123-123-1234           |
    | E-mail      | john.doe@example.com |
    | Card Type   | Visa   |
    | Card Number | 1234-1234-1234-1234   |
    | Expiration  | 07/24              |
  When I check the option to ship the order to the same person
  When I click on the "Place The order" Button
  Then I see the following data in the receipt
    | Name        | John Doe           |
    | Address     | 123 Elm Street     |
    | City        | Springfield        |
    | State       | IL                 |
    | Zip         | 30009               |
    | Phone       | 123-123-1234           |
  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |