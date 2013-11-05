@wip @mission_critical_production @credentials
Feature: Credential Scenarios for ESS

Background:
  Given I am on the ess4 login page
    
#Scenario: Testing valid login and logout combinations  
Scenario Outline: Testing valid login and logout combinations
  Then I fill in "j_username" with "<username>"
  Then I fill in "j_password" with "password"
  When I click_on "login-btn" "id"
  #Then I xpath "ajfdl" "akldfja"
  Then I should be on "https://ess4-white.echo360.com:8443/ess/app" page
  Then the page title should be "Echoes - EchoSystem Server"
  When I click_on "logout" "id"
  Then the page title should be "Welcome to the EchoSystem Server"  
  Then I should be on "https://ess4-white.echo360.com:8443/ess/login.jsp" page
  
Examples:
  |username     |
  |nr.instructor|
  |nr.admin     |
  |nr.avtech    |
  |nr.guest     |
 
# Scenario Outline: Testing invalid login combinations
#   Then I fill in "j_username" with "<username>"
#   Then I xpath "ldjfla" "fjaj"
#   Then I fill in "j_password" with "<password>"
#   When I click_on "login-btn" "id"
#   Then I should see "Your user name and/or password is incorrect. Please try again."
#   Then I should be on "https://ess4-white.echo360.com:8443/ess/loginInvalid.jsp" page
#   Then the page title should be "Welcome to the EchoSystem Server" 
# 
# Examples:
#   |username       |password       |
#   |fake_username  |password       |
#   |lenin          |wrong_password |
#   |fake_username  |fake_password  |

# @wip  
# Scenario: Just testing WIP
#   Then I eat food

# 
# Examples:
#   |username       |password       |
#   |fake_username  |fake_password  |

# Scenario: Quit the browser
#   Then I close the browser
#   
#   