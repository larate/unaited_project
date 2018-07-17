Given(/^I land on a home screen and verify Home link is displayed$/) do
  # sleep 3
 text("Home")
end

When(/^I click on "([^"]*)" in Horizontal scroll view$/) do |tab_name|
 text(tab_name).click
end

Then(/^I verify that title text is equal to "([^"]*)"$/) do |text|
  expect(find_element(id: "main_menu_card_default_fragment_card_view_title").text).to eq(text)

end