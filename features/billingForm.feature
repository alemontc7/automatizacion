Feature: As a sleepy online shopper
  I want to know which field I should change if I make a mistake in the billing form
  So I finish my purchase

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
  When I click on the "Place The order" Button
  Then I receive a notification "Please enter a valid zip code in this field."
  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |

Scenario Outline: Fill the form with a wrong phone number
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
    | Phone       | 555-1234           |
    | E-mail      | john.doe@example.com |
    | Card Type   | American Express   |
    | Card Number | 378282246310005    |
    | Expiration  | 12/25              |
  When I check the option to ship the order to the same person
  When I click on the "Place The order" Button
  Then I receive a notification "Please enter a valid phone number in this field."

  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |

Scenario Outline: Fill the form with incomplete data
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
    | E-mail      |  a@a.com|
    | Card Type   | American Express   |
    | Card Number |  1234-123456-12345   |
    | Expiration  | omit|

  When I check the option to ship the order to the same person
  When I click on the "Place The order" Button
  Then I receive a notification "This is a required field."

  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |

Scenario Outline: Fill the form with a wrong card number for American Express
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
    | Card Type   | American Express   |
    | Card Number | 213 231 3213 2    |
    | Expiration  | 12/25              |
  When I check the option to ship the order to the same person
  When I click on the "Place The order" Button
  Then I receive a notification "Please enter a valid card number of the form '1234-123456-12345' in this field."
  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |

Scenario Outline: Fill the form with a wrong card number for Visa
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
    | Card Number | 213 231 3213 2    |
    | Expiration  | 12/25              |
  When I check the option to ship the order to the same person
  When I click on the "Place The order" Button
  Then I receive a notification "Please enter a valid card number of the form '1234-1234-1234-1234' in this field."
  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |

Scenario Outline: Fill the form with a wrong card number for Mastercard
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
    | Card Type   | MasterCard   |
    | Card Number | 213 231 3213 2    |
    | Expiration  | 12/25              |
  When I check the option to ship the order to the same person
  When I click on the "Place The order" Button
  Then I receive a notification "Please enter a valid card number of the form '1234-1234-1234-1234' in this field."
  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |

Scenario Outline: Fill the form with a wrong expiration date
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
    | Card Type   | MasterCard   |
    | Card Number | 1234-1234-1234-1234   |
    | Expiration  | Tomorrow              |
  When I check the option to ship the order to the same person
  When I click on the "Place The order" Button
  Then I receive a notification "Please enter a valid date of the form 'MM/YY' in this field."
  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |


Scenario Outline: Fill the form with an expired card
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
    | Card Type   | MasterCard   |
    | Card Number | 1234-1234-1234-1234   |
    | Expiration  | 04/24              |
  When I check the option to ship the order to the same person
  When I click on the "Place The order" Button
  Then I receive a notification "Please enter a valid date of the form 'MM/YY' in this field."
  Examples:
  | product                | quantity | 
  | 3 Person Dome Tent     | 2   |
