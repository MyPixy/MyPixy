#----------------------------------
# UC: CreateEvent Cucumber .feature file
#----------------------------------
    
@RunWith

Feature: CreateEvent
     as an User
   I want to create an event

    Scenario: CreateEvent_ValidInput_NoFullDay
      If the input for the creation of an event is right 
        the event is created.
      Given I see input fields for Titel, Kategorie, Wiederholung and bis
      And I see input fields for Datum von and bis
      And I see a "Speichern" Button
      When I add information to the fields
      And I click on the Speichern-Button 
      Then The event is created

   Scenario: CreateEvent_InvalidInput_NoFullDay
      If the input for the creation of an event is wrong 
        the user recieves an error message.
      Given I see input fields for Titel, Kategorie, Wiederholung and bis
      And I see input fields for Datum von and bis
      And I see a Speichern-Button
      When I add wrong information to the fields
      And I click on the Speichern-Button
      Then I recieve an error message

   Scenario: CreateEvent_ChangeToFullDay
      If the input for the creation of a full day event is right 
        the event is created.
      Given I see a checkbox Ganztägig
      When I check the checkbox
      Then I see an other input formular
   
   Scenario: CreateEvent_ValidInput_FullDay
      If the input for the creation of a full day event is wrong 
        the user recieves an error message.
      Given I see input fields for Titel, Datum von and bis
      And I see input fields for Kategorie, Wiederholung and bis
      And I see a Speichern-Button
      And I see a checked checkbox Ganztägig
      When I add right information to the fields
      And I click on the Speichern-Button
      Then The event is created
   
   Scenario: CreateEvent_InvalidInput_FullDay
      If the input for the creation of a full day event is wrong 
        the user recieves an error message.
      Given I see input fields for Titel, Datum von and bis
      And I see input fields for Kategorie, Wiederholung and bis
      And I see a Speichern-Button
      And I see a checked checkbox Ganztägig
      When I add wrong information to the fields
      And I click on the Speichern-Button
      Then I recieve an error message