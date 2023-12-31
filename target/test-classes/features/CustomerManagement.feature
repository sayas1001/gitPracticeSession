@customerManagementTests
Feature: Customer management

  @newCustomerBTNTest
  Scenario: As a user when I navigate to the Customers Tab, I should see New customer button
    Given As an entity user, I am logged in
    When I navigate to the customers tab
    Then I should see the New Customer button displayed

  @newCustomerBasicInfoFormLabel
  Scenario: As a user when I navigate to the Customers Tab and Click on New customer button, I should see the basic information form label
    Given As an entity user, I am logged in
    When I navigate to the customers tab
    And I click on the New Customer button
    Then I should see the Basic Info form label

  @newCustomerBasicInfoFields
  Scenario: As a user when I navigate to the Customers Tab and click on New customer button, I should see the Basic Info fields
    Given As an entity user, I am logged in
    When I navigate to the customers tab
    And I click on the New Customer button
    Then I should see the Basic Info form label
    And I should see the fields Display Name, Primary Contact Name, Email, Primary Currency, Website, and Prefix

  @newCustomerTableList
  Scenario: As a user when I navigate to the Customers Tab, I should see the Customers Table List
    Given As an entity user, I am logged in
    When I navigate to the customers tab
    Then I should see the Customer List Table
    
     @customerTableColumns
  Scenario: As a user when I navigate to the Customers Tab, I should see the Customers Table with the appropriate columns
    Then I should see the Customer List Table
    And the following columns: NAME, PHONE , AMOUNT DUE, ADDED ON

  @customerTableMoreOptions
  Scenario: As a user when I navigate to the Customers Tab, I should see a more options button
    Then I should see the Customer List Table
    And a more link option for each customer with the options: Delete, Edit, View

  @newCustomerCreatedMessage
  Scenario: As a user when I navigate to the Customers Tab, when I create a user I should see a pop up message
    And I click on the New Customer button
    Then I enter a display name
    And click save
    Then I should see the pop up message "Customer created successfully"
    And I delete the customer

    @newCustomerInvalidNoInfo
    Scenario: As a user when I navigate to the Customers Tab and try creating a new customer without passing any info, I should get an error
    And I click on the New Customer button
    And click save
    Then I should see the error message “Field is required” below the Display Name field

    