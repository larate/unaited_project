@acceptance
Feature: Home screen feature

  Background:
    Given I land on a home screen and verify Home link is displayed

  @home_1
  Scenario Outline: Checking navigation in horizontal Scroll View
#    Given I land on a home screen and verify Home link is displayed
    When I click on "<tab_name>" in Horizontal scroll view
    Then I verify that title text is equal to "<text>"
    Examples:
      | tab_name        | text               |
      | Boarding Passes | No boarding passes |
      | Flight Status   | No active flights  |

@home_2
    Scenario: User shouldn't be able to sign in without entering valid data in login password fields
#      Given I land on a home screen and verify Home link is displayed
      When  I click on Welcome to United section
      Then I click on Sign in button
      And the error massag should be displayed  "Account number and password are required."

  @home_3
  Scenario: User should be able to open Entertainment section
#    Given I land on a home screen and verify Home link is displayed
    When I tap on Entertainment section
    Then "Personal device entertainment" should be displayed on Entertainment page

    @home_4
    Scenario: Using left to right swipe I open left menu and check functionality of currency converter
      When I swipe screen to the right direction
      And I look for a menu item "Currency converter", swipe to find if necessary then click
      Then  I enter "1000000" as amount I want to exchenge
