@smokeTest
Feature: User management / access management

  @validLogin
  Scenario: User should be able to login with valid credentials
    Given As a user, I am on the login page
    When I enter valid useremail and valid password
    And Click on login button
    Then I should be logged in

  #cucumber uses steps again and again thayt has already been used.
  #cucumber generates 1 step if there are 2 steps
  @invalidEmailLogin
  Scenario: Invalid email login attempts
    Given As a user, I am on the login page
    When I enter invalid username and valid password
    And Click on login button
    Then I should see an error message "These credentials do not match our records." displays
    And I should not be logged in

  @createItem
  Scenario: As a user, I am able to create an item or a service
    Given As an entity user, I am logged in
    And I navigate to Items tab
    When I click on the Add Item button
    And I should be on item input page
    When I provide item information name "Coffee", price 1800, unit "pc", and description "a good drink"
    And I click Save Item button
    Then The Item is added to the Item list table
    And I delete the item
