Feature: As a sleepy online shopper
  I want to copy the bill data to the ship data
  So I can ship de product to the same pertsona

Background:
  Given I am on the online catalog
  When I click on the button "Enter GMO OnLine"

Scenario Outline: Fill the form with a wrong zip code
  And I fill in the input box of the product "<product>" with "<quantity>"
  When I click on the "Place an order" Button
  And I see the summary of my purchase
  When I click on the "Proceed With Order" Button
  And I fill the form with the following data
    | Name        | John Doe           |
    | Address     | 123 Elm Street     |
    | City        | Springfield        |
    | State       | IL                 |
    | Zip         | 0000               |
    | Phone       | 555-1234           |
    | E-mail      | john.doe@example.com |
    | Card Type   | American Express   |
    | Card Number | 378282246310005    |
    | Expiration  | 12/25              |
  When I check the option to ship the order to the same person
  Then I see the following table in the Ship to form:
    | Name        | John Doe           |
    | Address     | 123 Elm Street     |
    | City        | Springfield        |
    | State       | IL                 |
    | Zip         | 0000               |
  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |