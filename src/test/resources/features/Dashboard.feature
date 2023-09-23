@dashboardTests
Feauture : Dashboard Home page

Background: 
Given As an tntity user, I am logged in

@SakesandExpencesHeader
Scenario: As a user when I log in, I should be on the dashboard page and see the header sales expenses
Then I should be on the Dashboard Home page
And I should see the header "Sales & Expenses".