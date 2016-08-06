#keyword-driven.robot
*** Settings ***
Library  Selenium2Library
Suite Teardown  Close Browser

*** Variables ***
${BROWSER}    Chrome
${URL}        http://www.ict.rocks/squareroots

*** Keywords ***
Home Of Square Roots Is Open
  Open Browser  ${URL}  ${BROWSER}
  Title Should Be  Square Roots- Let the Muppets do the work

Valid Input Is Inserted
  Input Text  id=input_0  100

The Square Root Is Submitted
  Click Button  id=calcBtn

The Result Of The Square Root Should Be Shown
  Wait Until Element Is Visible  css=h2.ng-binding
  Element Text Should Be  css=h2.ng-binding  10
  
*** Test Cases ***
Valid Calculation Of Square Root
  Given Home Of Square Roots Is Open
  When Valid Input Is Inserted
  And The Square Root Is Submitted
  Then The Result Of The Square Root Should Be Shown

