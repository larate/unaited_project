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

When(/^I click on Welcome to United section$/) do
  find_element(id: "main_menu_mp_title").click
end

Then(/^I click on Sign in button$/) do
  find_element(id: "main_menu_mp_signin_button").click
end

And(/^the error massag should be displayed  "([^"]*)"$/) do |error_mess|
  expect(text(error_mess).displayed?).to be == true
end

When(/^I tap on Entertainment section$/) do
  find_element(id: "main_menu_entertainment").click
end

Then(/^"([^"]*)" should be displayed on Entertainment page$/) do |header_text|
  expect(find_element(id: "inflight_header").text).to eq(header_text)
end

When(/^I swipe screen to the right direction$/) do
  swipe(:start_x => 0.01, :start_y => 0.5, :end_x => 0.99, :end_y => 0.5, :duration => 900)
end

And(/^I look for a menu item "([^"]*)", swipe to find if necessary then click$/) do |arg|
  pending
end

Then(/^I enter "([^"]*)" as amount I want to exchenge$/) do |arg|
  pending
end