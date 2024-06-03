Feature: As a regretful user
  I want to clear all the field where I wrote a quantity with just one click
  So I can decide my purchase again

Background:
  Given I am on the online catalog
  When I click on the button "Enter GMO OnLine"

Scenario Outline: Clean the form when I entered data
  And I fill in the products form with the following data
    | product                | input |
    | <product>              | <input> |
  When I click the Reset form button
  Then the form looks like the following table 
    | product                | input |
    | 3 Person Dome Tent     | 0 |
    | External Frame Backpack| 0 |
    | Glacier Sun Glasses    | 0 |
    | Padded Socks           | 0 |
    | Hiking Boots           | 0 |
    | Back Country Shorts    | 0 |

  Examples:
    | product                | input |
    | 3 Person Dome Tent     | 324   |
    | External Frame Backpack| 32314 |
    | Glacier Sun Glasses    | 32314 |
    | Padded Socks           | 23120 |
    | Hiking Boots           | 42340 |
    | Back Country Shorts    | 42310 |
