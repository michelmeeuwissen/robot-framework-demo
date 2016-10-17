#data-driven.robot
*** Settings ***
Library           Selenium2Library
Resource          ${CURDIR}${/}..${/}global${/}keywords.robot
Force Tags        data-driven
Suite Setup       Open Browser             ${URL}    ${BROWSER}
Suite Teardown    Close Browser
Test Template     Calculate Square Root

*** Keywords ***
Calculate Square Root
  [Arguments]  ${squareroot}  ${result}
  Input Text                       id=inputField     ${squareroot}
  Click Button                     id=calcBtn
  Wait Until Element Is Visible    id=outputField
  Element Text Should Be           id=outputField    ${result}

*** Test Cases ***      SQUARE ROOT    RESULT  
Square Root Of 1 Is     1              1
Square Root Of 4 Is     4              2
Square Root Of 9 Is     9              3
Square Root Of 16 Is    16             4
Square Root Of 25 Is    25             5
Square Root Of 36 Is    36             6
Square Root Of 49 Is    49             7
Square Root Of 64 Is    64             8
Square Root Of 81 Is    81             9
Square Root Of 100 Is   100            10

