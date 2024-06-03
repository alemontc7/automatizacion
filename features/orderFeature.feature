Feature: As a sleepy user
  I want to receive an error pop up when I do something wrong when writing down the quantities
  So I can continue with my purchase

Background:
    Given I am on the online catalog
    When I click on the button "Enter GMO OnLine"

Scenario Outline: Fill the quantity input with letters
  And I fill in the input box of the product "<product>" with "<input>"
  When I click on the "Place an order" Button
  Then I receive a notification "Please enter only digits in this field."

  Examples:
    | product                | input | 
    | 3 Person Dome Tent     | cuatro   |
    | External Frame Backpack| seis   |
    | Glacier Sun Glasses    | uno  |
    | Padded Socks           | trece   |
    | Hiking Boots           | dieciocho   |
    | Back Country Shorts    | nueve   |

Scenario Outline: Fill the quantity input with invalid characters
  And I fill in the input box of the product "<product>" with "<input>"
  When I click on the "Place an order" Button
  Then I receive a notification "Please enter only digits in this field."

  Examples:
    | product                | input | 
    | 3 Person Dome Tent     | /(&/)   |
    | External Frame Backpack| F&D/S   |
    | Glacier Sun Glasses    | #/&#  |
    | Padded Socks           | @!#   |
    | Hiking Boots           | #$#&   |
    | Back Country Shorts    | #"$&$%#   |

Scenario Outline: Fill the quantity input with decimals
  And I fill in the input box of the product "<product>" with "<input>"
  When I click on the "Place an order" Button
  Then I receive a notification "Please enter only digits in this field."

  Examples:
    | product                | input | 
    | 3 Person Dome Tent     | 234.2   |
    | External Frame Backpack| 24.21   |
    | Glacier Sun Glasses    | 324.12 |
    | Padded Socks           | 12.23   |
    | Hiking Boots           | 34.1  |
    | Back Country Shorts    | 0.01   |

Scenario Outline: Fill the quantity input with white spaces
  And I fill in the input box of the product "<product>" with "<input>"
  When I click on the "Place an order" Button
  Then I receive a notification "Please Order Something First"

  Examples:
    | product                | input | 
    | 3 Person Dome Tent     |    |
    | External Frame Backpack|    |
    | Glacier Sun Glasses    |    |
    | Padded Socks           |    |
    | Hiking Boots           |    |
    | Back Country Shorts    |    |


Scenario Outline: Fill the quantity input with decimals
  And I fill in the input box of the product "<product>" with "<input>"
  When I click on the "Place an order" Button
  Then I receive a notification "Please enter only digits in this field."

  Examples:
    | product                | input | 
    | 3 Person Dome Tent     | -132   |
    | External Frame Backpack| -123   |
    | Glacier Sun Glasses    | -342 |
    | Padded Socks           | -1243   |
    | Hiking Boots           | -654  |
    | Back Country Shorts    | -3451   |