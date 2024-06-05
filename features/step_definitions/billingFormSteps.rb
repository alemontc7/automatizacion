When(/^I click on the "Proceed With Order" Button$/) do
  click_button('bSubmit')
end

And(/^I see the summary of my purchase$/) do
  expect(page).to have_content("Place Order")
end


And(/^I fill the form with the following data$/) do |table|
  data = table.rows_hash
  data.each do |key, value|
    case key
    when "Name"
      fill_in 'billName', with: value
      @name = value
    when "Address"
      fill_in 'billAddress', with: value
      @address = value
    when "City"
      fill_in 'billCity', with: value
      @city = value
    when "State"
      fill_in 'billState', with: value
      @state = value
    when "Zip"
      fill_in 'billZipCode', with: value
      @zip = value
    when "Phone"
      fill_in 'billPhone', with: value
      @phone = value
    when "E-mail"
      fill_in 'billEmail', with: value
      @email = value
    when "Card Type"
      select value, from: 'CardType'
      @card_type = value
    when "Card Number"
      fill_in 'CardNumber', with: value
      @card_number = value
    when "Expiration"
      unless value == "omit"
        fill_in 'CardDate', with: value
        @expiration = value
      end
    end
  end
end

When(/^I check the option to ship the order to the same person$/) do
  expect(page).to have_field('shipSameAsBill', type: 'checkbox')
  check('shipSameAsBill')
end

When(/^I click on the "Place The order" Button$/) do
  click_button('bSubmit')
  sleep 5
end


#AE 1234-123456-12345
#VISA
