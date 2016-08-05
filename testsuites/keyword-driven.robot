#keyword-driven.robot
*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER}    Chrome
${URL}        http://www.ict.rocks/squareroots

*** Keywords ***
Go To Home Of Square Roots
  Open Browser  ${URL}  ${BROWSER}
  
*** Test Cases ***
Verify Page Title
  Go To Home Of Square Roots
  Title Should Be  Square Roots- Let the Muppets do the work
  [Teardown]  Close Browser

