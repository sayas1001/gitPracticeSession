@dashnoardTests
Feature: Dashboard home page

Background: 
Given as an entity user, I am logged in

@salesandExpensesHeader
Scenario: As a user when I log in, I should be on the dashboard home page and view sales and expenses header
Then I should be on the Dashboard homepage
And I should see the header "Sales & Expences"

@example
Scenario: 
Scenario: As a user when I log in, I should be on the dashboard home page and view sales and expenses header
Then I should be on the Dashboard homepage
And I should see the header "Sales & Expences"