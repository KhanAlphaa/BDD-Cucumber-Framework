@Regression_Login
Feature: Tek Insurance Login Page

  @Smoke_Login
  Scenario: User logs in with valid CSR credentials
    When the user clicks on the login button
    And the user enters the following CSR credentials:
      | Username   | Password       |
      | supervisor | tek_supervisor |
    And the user submits the sign in form
    Then the user should be on the "Customer Service Portal" page

  @Smoke_InvalidUsernameNValidPassword
  Scenario: invalid username and valid password and validate error messages as expected
    When the user clicks on the login button
    And the user enters the following CSR credentials:
      | Username | Password       |
      | tamim    | tek_supervisor |
    And the user submits the sign in form
    Then Validate the error message "ERROR User tamim not found"

  @Smoke_ValidUsernameNInvalidPassword
  Scenario: valid username and invalid password and validate error messages as expected
    When the user clicks on the login button
    And the user enters the following CSR credentials:
      | Username   | Password         |
      | supervisor | wrong_supervisor |
    And the user submits the sign in form
    Then Validate the error message "ERROR Password not matched"


