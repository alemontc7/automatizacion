Feature: As an online shopper 
    I want to fill in my customer data correctly 
    so I can place my order successfully

Background:
    Given I am on the online catalog
    When I click on the button "Enter GMO OnLine"
	And I write the quantities for the product with the table below 

    | product                | input |   
    | 3 Person Dome Tent     | 15     | 
    | External Frame Backpack| 7     |  

    And I click on the "Place an order" Button
    And I click on the "Proceed With Order" Button 

Scenario: See the correct Billing Form
    Then I see a form with these values: 
        | Name    |
        | Address |
        | City    |
        | State   |
        | Zip     |
        | Phone   |
        | E-mail    |
        | Credit Card |
        | Card Number | 	
        | Expiration |
    
Scenario: Fill out the Billing form correctly with MasterCard
  And I fill the form with the following data
    | Name        | Joselito Nico       |
    | Address     | 314159 Street     |
    | City        | Utavi       |
    | State       | LA                |
    | Zip         | 30010               |
    | Phone       | 314-159-2654           |
    | E-mail      | josetlito@gmail.com |
    | Card Type   | MasterCard   |
    | Card Number | 3141-5926-5358-9792   |
    | Expiration  | 09/26              |
    
  And I check the option to ship the order to the same person
  And I click on the "Place The order" Button
  Then I see the "OnLine Store Receipt"

Scenario: Fill out the Billing form correctly with Visa 
  And I fill the form with the following data
    | Name        | Joselito Nico       |
    | Address     | 314159 Street     |
    | City        | Utavi       |
    | State       | LA                |
    | Zip         | 30010               |
    | Phone       | 314-159-2654           |
    | E-mail      | josetlito@gmail.com |
    | Card Type   | Visa   |
    | Card Number | 3141-5926-5358-9792   |
    | Expiration  | 09/26              |
    
  And I check the option to ship the order to the same person
  And I click on the "Place The order" Button
  Then I see the "OnLine Store Receipt"

  Scenario: Fill out the Billing form correctly with American Express
  And I fill the form with the following data
    | Name        | Joselito Nico       |
    | Address     | 314159 Street     |
    | City        | Utavi       |
    | State       | LA                |
    | Zip         | 30010               |
    | Phone       | 314-159-2654           |
    | E-mail      | josetlito@gmail.com |
    | Card Type   | American Express   |
    | Card Number | 3141-592535-89792   |
    | Expiration  | 09/26              |
    
  And I check the option to ship the order to the same person
  And I click on the "Place The order" Button
  Then I see the "OnLine Store Receipt"