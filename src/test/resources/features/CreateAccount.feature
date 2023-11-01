@Regression_CreatePrimaryAccount
Feature: Tek Insurance Create Primary Account Form

  @Smoke_CreatePrimaryAccount
  Scenario: Navigate to Create Primary Account Form
    When the user clicks on the Create Primary Account Button
    Then the Form Title should be "Create Primary Account Holder"

  @Smoke_FillAndSubmitPrimaryAccountForm
  Scenario: Fill and Submit Create Primary Account Holder Form with Data
    When the user clicks on the create primary account button
    And the user fills out the form with the following data:
      | Field            | Value                  |
      | email            | td6000987654@gmail.com |
      | title            | Mr.                    |
      | firstName        | kachalo                |
      | lastName         | shalgham               |
      | gender           | Male                   |
      | maritalStatus    | Single                 |
      | employmentStatus | Employed               |
      | dateOfBirth      | 40                     |
    And the user clicks on the Create Account Button
    Then the user navigates to the "Sign up your account" page
    And the Email Address displayed on the page should be "td6000987654@gmail.com"

  @Smoke_CreateAccountWithExistingEmail
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
    Then the user should see an error message indicating "ERROR Account with email td@gmail.com is exist"



