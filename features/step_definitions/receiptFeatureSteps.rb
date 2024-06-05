Then(/^I see the following data in the receipt$/) do |table|
  data = table.rows_hash

  selectors = {
    "Name" => [
      'body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(1) > td:nth-child(2) > strong',
      'body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(1) > td:nth-child(5) > strong'
    ],
    "Address" => [
      'body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(2) > td:nth-child(2) > strong',
      'body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(2) > td:nth-child(5) > strong'
    ],
    "City" => [
      'body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(3) > td:nth-child(2) > strong',
      'body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(3) > td:nth-child(5) > strong'
    ],
    "Phone" => [
      nil,
      'body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(4) > td:nth-child(5) > strong'
    ]
  }

  data.each do |key, value|
    selector_primary, selector_secondary = selectors[key]
    expected_value = case key
                     when "City"
                       "#{@city}, #{@state} #{@zip}"
                     else
                       instance_variable_get("@#{key.downcase}")
                     end

    if selector_primary
      element = find(selector_primary)
      expect(element.text).to eq(expected_value)
    end

    if selector_secondary
      element_second_appearance = find(selector_secondary)
      expect(element_second_appearance.text).to eq(expected_value)
    end
  end
end
