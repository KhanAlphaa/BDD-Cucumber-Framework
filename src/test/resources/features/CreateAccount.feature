@tekInsuranceCreateAccount
Feature: TEK Insurance App Functionality

  @CreatePrimaryAccount
  Scenario: Navigate to Create Primary Account Form
    When the user clicks on the Create Primary Account Button
    Then the Form Title should be "Create Primary Account Holder"

  @FillAndSubmitPrimaryAccountForm
  Scenario: Fill and Submit Create Primary Account Holder Form with Data
    When the user clicks on the create primary account button
    And the user fills out the form with the following data:
      | Field            | Value        |
      | email            | td6@gmail.com |
      | title            | Mr.          |
      | firstName        | kachalo      |
      | lastName         | shalgham     |
      | gender           | Male         |
      | maritalStatus    | Single       |
      | employmentStatus | Employed     |
      | dateOfBirth      | 04/08/1995   |
    And the user clicks on the Create Account Button
    Then the user navigates to the "Sign up your account" page
    And the Email Address displayed on the page should be "td6@gmail.com"

  @CreateAccountWithExistingEmail
  Scenario: User Attempts to Register with an Existing Email Address
    When the user clicks on the create primary account button
    When there is an user account with the existing email address
      | Field         | Value        |
      | email         | td@gmail.com |
      | title         | Mr.          |
      | firstName     | Peyaz        |
      | lastName      | Romi         |
      | gender        | Female       |
      | maritalStatus | Single       |
    And the user clicks on the Create Account Button
    Then the user should see an error message indicating "ERROR"



