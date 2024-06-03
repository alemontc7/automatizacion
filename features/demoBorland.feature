Feature: As a buyer persona
  I want to access the borland store
  so I can see a list of products

Background:
  Given I am on the online catalog

Scenario Outline: Look for a product in the borland store        
  When I click on the button "Enter GMO OnLine"
  Then I see a list of products
    | 3 Person Dome Tent     |
    | External Frame Backpack|
    | Glacier Sun Glasses    |
    | Padded Socks           |
    | Hiking Boots           |
    | Back Country Shorts    |