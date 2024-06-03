Feature: As an online shopper 
  I want the system to calculate totals, taxes and shipping costs
  so I can see the final ammout I need to pay

Background:
    Given I am on the online catalog
    When I click on the button "Enter GMO OnLine"

Scenario Outline: Fill the quantity of just one product
  And I write "<input>" in the input box of the product "<product>"
  When I click on the "Place an order" Button
  Then I see the total price for the product

  Examples:
    | product                | input |   
    | 3 Person Dome Tent     | 1     | 
    | External Frame Backpack| 1     |  
    | Glacier Sun Glasses    | 1     | 
    | Padded Socks           | 1     | 
    | Hiking Boots           | 1     |  
    | Back Country Shorts    | 1     |
