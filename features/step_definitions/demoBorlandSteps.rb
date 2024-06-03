#Given I am on the Google homepage
Given(/^I am on the online catalog$/) do
  page.driver.browser.manage.window.maximize
  visit ('https://demo.borland.com/gmopost/')
end

When(/^I click on the button "Enter GMO OnLine"$/) do
  click_button('bSubmit')
end

#Then I see a link for the "SIAA"
Then('I see a {string}') do |product|

  expect(page).to have_link(product)
end
