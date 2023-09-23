@tag
Feature: Title of your feature
  I want to use this template for my feature file

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

  @EditItems
  Scenario: As a user. I am able to update an item or a service
    And I navigate to Items tab
    When I click on the Add Item button
    And I should be on item input page
    When I provide item information name "Coffee mug", price 1800, unit "pc", and description "a good drink"
    And I click Save Item button
    Then The Item is added to the Item list table
    When I click on edit button
    Then I should be on edit items page
    When I update the items price to "2200"
    And I click on update item button
    Then Items price should be updated to "2200"
    And I delete the item
