Feature: As a sleepy user
  I want to receive an error pop up when I do something wrong when writing down the quantities
  So I can continue with my purchase

Scenario Outline: Fill the quantity input with invalid characters
  Given I am on the online catalog
  When I click on the button "Enter GMO OnLine"
  
  And I fill in the input box of the product "<product>" with "<input>"
  When I click on the "Place an order" Button
  Then I receive a notification "Please enter only digits in this field."

  Examples:
    | product                | input | 
    | 3 Person Dome Tent     | abc   |
    | External Frame Backpack| xyz   |
    | Glacier Sun Glasses    | 123a  |
    | Padded Socks           | @!#   |
    | Hiking Boots           | 0a1   |
    | Back Country Shorts    | NaN   |
