Then(/^I see a form with these values:$/) do |table|
  expected_form_values = table.raw.flatten
  form_values_selector = "body > form:nth-child(3) > table:nth-child(2) > tbody:nth-child(1) > tr:nth-child(2) > td:nth-child(1) > table:nth-child(1)"
  within(form_values_selector) do
    rows = all('tr')
    rows.each_with_index do |row, index|
      next if index == 0 #cabeceras..
      next if row.all('td')[0].text.strip == ""
      value_name = row.all('td')[0].text.strip
      expect(expected_form_values).to include(value_name)
    end
  end
end

Then(/^I see the "(.*)"$/) do |receipt|
  expect(page).to have_content(receipt)
end
