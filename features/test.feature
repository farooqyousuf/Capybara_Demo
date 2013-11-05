@wip @mission_critical_production @credentials
Feature: Testing

Background:
  Given I am on the ess4 login page
    
Scenario: Testing valid login and logout combinations  
#Scenario Outline: Testing valid login and logout combinations
#  Then I fill in "j_username" with "<username>"
  Then I fill in "j_username" with "nr.instructor"
  Then I fill in "j_password" with "password"
  #When I click_on "login-btn" "id"
  Then I xpath "ajfdl" "akldfja"
  Then I should be on "https://ess4-white.echo360.com:8443/ess/app" page
  Then the page title should be "Echoes - EchoSystem Server"
  When I click_on "logout" "id"
  Then the page title should be "Welcome to the EchoSystem Server"  
  Then I should be on "https://ess4-white.echo360.com:8443/ess/login.jsp" page

Scenario: Testing valid login and logout combinations  
#Scenario Outline: Testing valid login and logout combinations
#  Then I fill in "j_username" with "<username>"
  Then I fill in "j_username" with "nr.admin"
  Then I fill in "j_password" with "password"
  When I click_on "login-btn" "id"
  #Then I xpath "ajfdl" "akldfja"
  Then I should be on "https://ess4-white.echo360.com:8443/ess/app" page
  Then the page title should be "Echoes - EchoSystem Server"
  When I click_on "logout" "id"
  Then the page title should be "Welcome to the EchoSystem Server"  
  Then I should be on "https://ess4-white.echo360.com:8443/ess/login.jsp" page

 
# Examples:
#   |username     |
#   |nr.instructor|
#   |nr.admin     |