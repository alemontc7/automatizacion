Then(/^I see the following table in the Ship to form:$/) do |table|
  data = table.rows_hash
  within('body > form > table > tbody > tr:nth-child(2) > td:nth-child(3) > table') do
    data.each do |key, value|
      case key
      when "Name"
        expect(find('input[name="shipName"]').value).to eq(value)
      when "Address"
        expect(find('input[name="shipAddress"]').value).to eq(value)
      when "City"
        expect(find('input[name="shipCity"]').value).to eq(value)
      when "State"
        expect(find('input[name="shipState"]').value).to eq(value)
      when "Zip"
        expect(find('input[name="shipZipCode"]').value).to eq(value)
      when "Phone"
        expect(find('input[name="shipPhone"]').value).to eq(value)
      end
    end
  end
end
