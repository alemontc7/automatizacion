Then(/^I see the following data in the receipt$/) do |table|
  data = table.rows_hash
  data.each do |key, value|
    case key
    when "Name"
      element = find('body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(1) > td:nth-child(2) > strong')
      element_second_appearance = find('body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(1) > td:nth-child(5) > strong')
      expect(element.text).to eq(@name)
      expect(element_second_appearance.text).to eq(@name)
    when "Address"
      element = find('body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(2) > td:nth-child(2) > strong')
      element_second_appearance = find('body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(2) > td:nth-child(5) > strong')
      expect(element.text).to eq(@address)
      expect(element_second_appearance.text).to eq(@address)
    when "City"
      expected_concatenated_content = "#{@city}, #{@state} #{@zip}"
      element = find('body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(3) > td:nth-child(2) > strong')
      element_second_appearance = find('body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(3) > td:nth-child(5) > strong')
      expect(element_second_appearance.text).to eq(expected_concatenated_content)
    when "Phone"
      element = find('body > table:nth-child(5) > tbody > tr:nth-child(1) > td > div > center > table > tbody > tr:nth-child(4) > td:nth-child(5) > strong')
      expect(element.text).to eq(@phone)
    end
  end
end
