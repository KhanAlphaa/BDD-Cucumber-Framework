@Regression_Accounts
Feature: Accounts - Customer Service Portal and Account Data Validation

  Background:
    Given the user clicks on the login button
    When the user enters valid CSR credentials username "supervisor" password "tek_supervisor"
    Then the user clicks on the sign-in button
    And the user navigate to the "Accounts" Link

  @Smoke_LoginAndNavigateToAccounts
  Scenario: Login and Navigate to Accounts
    Then the user should validate the 5 rows of data in default

  @Smoke_ChangeTheRecodeFromDropDown
  Scenario Outline: Changing the show per page Record
    When the user changes the Show Per Page Record to "<Show Per Page Records>"
    Then the table records per page should be <Expected Table Records>
    Examples:
      | Show Per Page Records | Expected Table Records |
      | Show 10               | 10                     |
      | Show 25               | 25                     |
      | Show 50               | 50                     |


