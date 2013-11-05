@mission_critical_production @credentials
Feature: Demo Scenarios for ESS

Background:
  Given I am on the ess4 login page

#Scenario: Testing valid login and logout combinations  
Scenario: Testing login and logout for instructor
  Then I fill in "j_username" with "nr.instructor"
  Then I fill in "j_password" with "password"
  When I click_on "login-btn" "id"
  #Then I xpath "ajfdl" "akldfja"
  Then I should be on "https://ess4-white.echo360.com:8443/ess/app" page
  Then the page title should be "Echoes - EchoSystem Server"
  When I click_on "logout" "id"
  Then the page title should be "Welcome to the EchoSystem Server"  
  Then I should be on "https://ess4-white.echo360.com:8443/ess/login.jsp" page

Scenario: Testing login and logout for admin
  Then I fill in "j_username" with "nr.admin"
  Then I fill in "j_password" with "password"
  When I click_on "login-btn" "id"
  Then I should be on "https://ess4-white.echo360.com:8443/ess/app" page
  Then the page title should be "Echoes - EchoSystem Server"
  When I click_on "logout" "id"
  Then the page title should be "Welcome to the EchoSystem Server"  
  Then I should be on "https://ess4-white.echo360.com:8443/ess/login.jsp" page

Scenario: Testing login and logout for avtech
  Then I fill in "j_username" with "nr.avtech"
  Then I fill in "j_password" with "password"
  When I click_on "login-btn" "id"
  Then I should be on "https://ess4-white.echo360.com:8443/ess/app" page
  Then the page title should be "Echoes - EchoSystem Server"
  When I click_on "logout" "id"
  Then the page title should be "Welcome to the EchoSystem Server"  
  Then I should be on "https://ess4-white.echo360.com:8443/ess/login.jsp" page

Scenario: Testing login and logout for guest
  Then I fill in "j_username" with "nr.guest>"
  Then I fill in "j_password" with "password"
  When I click_on "login-btn" "id"
  Then I should be on "https://ess4-white.echo360.com:8443/ess/app" page
  Then the page title should be "Echoes - EchoSystem Server"
  When I click_on "logout" "id"
  Then the page title should be "Welcome to the EchoSystem Server"  
  Then I should be on "https://ess4-white.echo360.com:8443/ess/login.jsp" page

Scenario: Testing login with invalid username
  Then I fill in "j_username" with "fake_username"
  Then I fill in "j_password" with "password"
  When I click_on "login-btn" "id"
  Then I should see "Your user name and/or password is incorrect. Please try again."
  Then I should be on "https://ess4-white.echo360.com:8443/ess/loginInvalid.jsp" page
  Then the page title should be "Welcome to the EchoSystem Server" 

Scenario: Testing login with invalid password
  Then I fill in "j_username" with "lenin"
  Then I fill in "j_password" with "wrong_password"
  When I click_on "login-btn" "id"
  Then I should see "Your user name and/or password is incorrect. Please try again."
  Then I should be on "https://ess4-white.echo360.com:8443/ess/loginInvalid.jsp" page
  Then the page title should be "Welcome to the EchoSystem Server" 

Scenario: Testing login with invalid username
  Then I fill in "j_username" with "fake_username"
  Then I fill in "j_password" with "fake_password"
  When I click_on "login-btn" "id"
  Then I should see "Your user name and/or password is incorrect. Please try again."
  Then I should be on "https://ess4-white.echo360.com:8443/ess/loginInvalid.jsp" page
  Then the page title should be "Welcome to the EchoSystem Server" 