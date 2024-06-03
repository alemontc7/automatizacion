Given(/^I am on the online catalog$/) do
  page.driver.browser.manage.window.maximize
  visit ('https://demo.borland.com/gmopost/')
end

When(/^I click on the button "Enter GMO OnLine"$/) do
  click_button('bSubmit')
end

Then(/^I see a list of products$/) do |table|
  products = table.raw.flatten
  within('body > form > table > tbody > tr:nth-child(2) > td > div > center > table') do
    rows = all('tr')
    rows.each_with_index do |row, index|
      next if index == 0 #cabeceras..
      product_name = row.all('td')[1].text.strip
      expect(products).to include(product_name)
    end
  end
end


And(/^I click on the product "(.*)"$/) do |product|
  within('body > form > table > tbody > tr:nth-child(2) > td > div > center > table') do
    click_link(product)
  end
end

Then(/^I should see its description "(.*)"$/) do |description|
  expect(page).to have_content(description)
end
