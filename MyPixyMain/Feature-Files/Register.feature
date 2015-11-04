#----------------------------------
# Example of Cucumber .feature file
#----------------------------------

Feature: Register
    as a unregistered Visitor
    I want to register at MyPixy

   Scenario: Register_CorrectInput
      If the input for the registration is right 
        the visitor becomes an user.
      Given I see input fields for Passwort, E-Mail-Adresse and Username
      And I see a Register-Button
      When I add information to the fields
      And I click on the Register-Button 
      Then I get registered
   
   Scenario: Register_IncorrectInput
      If the input for the registration is wrong 
        the visitor recieves an error message.
      Given I see input fields for Passwort, E-Mail-Adresse and Username
      And I see a Register-Button
      When I add wrong information to the fields
      And I click on the Register-Button
      Then I recieve an error message

    Scenario: Register_NoInput
      If there is no input for the registration 
        the visitor recieves an error message.
      Given I see input fields for Passwort, E-Mail-Adresse and Username
      And I see a Register-Button
      When I click on the Register-Button
      Then I recieve an error message

    Scenario: Register_AlreadyRegistered
      If the visitor is already registered
        the user gets to the login page.
      Given I see a link "Login"
      When I click on the Link
      Then I am directed to the login page


