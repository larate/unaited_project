@acceptance
Feature: Home screen feature

@home_1
  Scenario: Checking navigation in horizontal Scroll View
    Given  I land on a home screen and verify Home link is displayed
    When I click on "Boarding Passes" in Horizontal scroll view
    Then I verify that title text is equal to "No boarding passes"
