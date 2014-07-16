Feature: Log in/out links
  In order to easily log in and log out
  As a user
  I want to see the appropriate link

  Scenario: A guest user should see a login link
    Given I am not logged in
    And I am on the GetIt search page
    Then I should a login link
    And I should see "Login" as the text of the login link

  @logout
  Scenario: A logged in user should see a logout link
    Given I am logged in
    And I am on the GetIt search page
    Then I should a logout link
    And I should see "Log-out Dev" as the text of the logout link