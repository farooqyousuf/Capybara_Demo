@selenium
Feature: Verify all System tab/pages work properly

Background:
  * I am on the "login page"
  * I fill in the "j_username" textfield with "ess@echo360.com"
  * I fill in the "j_password" textfield with "$taRbuck$"
  * I click on the "login-btn" button
  * I click on the "PageLink_5" link
  
  Scenario: Verify System Admin CAN update Licenses
    * I click on the "Licensing" link
	  * I click on the "Update" button
    * I should see the text "Licensing information was updated successfully."

  Scenario: Verify System Admin CAN access Assign Room Licenses page using Room Assignments button
    * I click on the "Licensing" link
    * I click on the "Room Assignments" button
    * I should see the text "Assign Room Licenses"
    * I should be on the "Assign Room Licenses page"
    
  Scenario: Verify System Admin CAN assign or remove licenses from ALL Rooms listed on the Assign Room Licenses page
    * I click on the "Licensing" link
    * I click on the "Room Assignments" button
    * I select the first element in the dropdown "licenseSelection"
    * I click on the "All" link
    * I click on the "Save" button
    * I should see the text "The item has been saved."
    * I click on the "None" link
    * I click on the "Save" button
    * I should see the text "The item has been saved." 
    
  Scenario: Verify System Admin CAN access Assign Presenter Licenses page using Presenter Assignments button   
    * I click on the "Licensing" link
    * I click on the "Presenter Assignments" button
    * I should see the text "Manage Presenter Licenses"
    * I should be on the "Manage Presenter Licenses page"
    
  Scenario: Verify System Admin CAN assign or remove licenses from ALL Presenters listed on the Assign Presenter Licenses
    * I click on the "Licensing" link
    * I click on the "Presenter Assignments" button
    * I select the first element in the dropdown "dojoComboBox"
    * I click on the "currentAssignButton" button
    * I should see the text ""