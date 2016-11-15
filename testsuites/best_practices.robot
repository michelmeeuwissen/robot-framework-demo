*** Settings ***
Documentation   A test suite that describes best practices for Robot Framework. 
Library         Selenium2Library
#Use the buildin variables CURDIR and / to be sure the script works on Windows and Linux.
Resource        ${CURDIR}${/}..${/}global${/}keywords.robot
#Use tags so you can tell RF what testcases you want it to run, and which not.
#In our case, we use the tag FINAL for tests that should run from CI.   
Force Tags      FINAL
#Set the precondition(s) for the test suite.
Suite Setup      Start App
#Make sure teardown the browser when the suite is finished. 
Suite Teardown   Close Browser

*** Variables ***
#Define variables at testsuite level if you only use them once, otherwise define them on a higher level.
${TITLE}      Square Roots- Let the Muppets do the work

*** Keywords ***
#Use keywords so your test cases are easy to understand.
#Define a keyword on a higher level, if you want to use the same keyword in several suites.
Calculate Square Root
  [Arguments]  ${squareroot}  ${result}
  #Define element locators in a global variables file. In case the locator is changed, you need to adjust it on only one place.
  #Also variables should be describing. For page element variables, use 'locator' as suffix.
  Input Text                       ${SQUARE-ROOT-INPUT LOCATOR}     ${squareroot}
  Click Button                     ${CALC-BUTTON LOCATOR}
  Wait Until Element Is Visible    ${SQUARE-ROOT-OUTPUT LOCATOR}
  Element Text Should Be           ${SQUARE-ROOT-OUTPUT LOCATOR}    ${result}
  
*** Test Cases ***
#Testcases should describe what they do
Check App Title
  Title Should Be  ${TITLE}

Calculate Square Root
   #Avoid repeating workflows by the use of data-driven tests.
   [Template]  Calculate Square Root
   #Comment the variables used in the template, to make it's meaning clear.
   #square root  result
    1            1
    4            2
    9            3

