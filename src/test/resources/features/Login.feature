@tekInsuranceLogin
Feature: Tek Insurance Login Page

  @validLogin
  Scenario: User logs in with valid CSR credentials
    When the user clicks on the login button
    And the user enters the following CSR credentials:
      | Username   | Password       |
      | supervisor | tek_supervisor |
    And the user submits the sign in form
    Then the user should be on the "Customer Service Portal" page

  @invalidLogin
  Scenario: User logs in with Invalid CSR credentials
    When the user clicks on the login button
    And the user enters the following CSR credentials:
      | Username   | Password       |
      | wrong      | tek_supervisor |
      | supervisor | wrong          |
    And the user submits the sign in form
    Then Validate the error message "ERROR"
