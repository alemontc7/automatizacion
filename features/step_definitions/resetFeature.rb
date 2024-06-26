And(/^I fill in the products form with the following data$/) do |table|
  within('body > form > table > tbody > tr:nth-child(2) > td > div > center > table') do
    table.hashes.each do |row|
      product = row['product']
      input = row['input']
      product_row = find('tr', text: product)
      product_row.find('input[type="text"]').set(input)
    end
  end
end

When(/^I click the Reset form button$/) do
  click_button('bReset')
end

Then(/^the form looks like the following table$/) do |table|
  within('body > form > table > tbody > tr:nth-child(2) > td > div > center > table') do
    table.hashes.each do |row|
      product = row['product']
      input = row['input']
      product_row = find('tr', text: product)
      actual_value = product_row.find('input[type="text"]').value
      actual_value == input
    end
  end
end
