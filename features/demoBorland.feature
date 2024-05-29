Feature: As a buyer persona
         I want to access the borland store
         so I can see a product

Scenario: Look for a product in the borland store        
  Given I am on the online catalog
  When I click in the button "Enter GMO OnLine"
  Then I see a "3 Person Dome Tent"