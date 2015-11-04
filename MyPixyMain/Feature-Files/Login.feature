#----------------------------------
# Example of Cucumber .feature file
#----------------------------------
    
Feature: Login
    as a unlogged User
    I want to login to MyPixy

   Scenario: Login_CorrectInput
      If the input for the login is right the user gets logged in.
      Given I see input fields for Passwort and E-Mail-Adresse
      And I see a Login-Button
      When I add information to the fields
      And I click on the Login-Button 
      Then I get logged in
   
   Scenario: Login_IncorrectInput
      If the input for the login is wrong there comes a error message.
      Given I see input fields for Passwort and E-Mail-Adresse
      And I see a Login-Button
      When I add wrong information to the fields
      And I click on the Login-Button
      Then I recieve an error message

    Scenario: Login_NoInput
      If there is no input for the login there comes a error message.
      Given I see input fields for Passwort and E-Mail-Adresse
      And I see a Login-Button
      When I click on the Login-Button
      Then I recieve an error message
