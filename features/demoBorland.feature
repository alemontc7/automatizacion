Feature: As a buyer persona
  I want to access the borland store
  so I can see a list of products

Background:
  Given I am on the online catalog
  When I click on the button "Enter GMO OnLine"

Scenario Outline: Look for a product in the borland store        
  Then I see a list of products
    | 3 Person Dome Tent     |
    | External Frame Backpack|
    | Glacier Sun Glasses    |
    | Padded Socks           |
    | Hiking Boots           |
    | Back Country Shorts    |
  
Scenario Outline: Look for a product description in the borland store        
    And I click on the product "<product>"
    Then I should see its description "<description>"
    Examples: 
      | product                | description |
      | 3 Person Dome Tent     | Our best 3 person backpack dome tent |
      | External Frame Backpack| Our most popular external frame backpack |
      | Glacier Sun Glasses    | Our best glacier sun glasses will protect you on your next expedition or when you hit the slopes.|
      | Padded Socks           | Our favorite padded socks will make your next back country trek easier on your feet. |
      | Hiking Boots           | Climb any mountain with our PermaDry all leather hiking boots. |
      | Back Country Shorts    | Our quick drying shorts are a customer favorite. Perfect for a day of any outdoor activity or just lounging around the camp. |