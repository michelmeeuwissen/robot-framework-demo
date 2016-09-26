#keyword-driven.robot
*** Settings ***
Library         Selenium2Library
Force Tags      keyword-driven

*** Variables ***
${BROWSER}    Firefox
${URL}        http://squareroots.jdriven.com
${TITLE}      Square Roots- Let the Muppets do the work

*** Keywords ***
Go To Home Of Square Roots
  Open Browser  ${URL}  ${BROWSER}
  Title Should Be  ${TITLE}
  
*** Test Cases ***
Verify Page Header
  Go To Home Of Square Roots
  Page Should Contain Element  xpath=//h2  Square Roots!    
  [Teardown]  Close Browser

