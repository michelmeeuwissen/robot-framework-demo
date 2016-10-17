#embedded_arguments.robot
*** Settings ***
Library         Selenium2Library
Resource        ${CURDIR}${/}..${/}global${/}keywords.robot
Force Tags      embedded-arguments
Suite Setup     Open Browser  ${URL}  ${BROWSER}
Suite Teardown  Close Browser

*** Keywords ***
The Square Root Of ${squareroot} Should Be ${result}
    Input Text                       id=inputField     ${squareroot}
    Click Button                     id=calcBtn
    Wait Until Element Is Visible    id=outputField
    Element Text Should Be           id=outputField    ${result}

*** Test Cases ***
Calculate Square Roots (embedded arguments)
  The Square Root Of 1 Should Be 1
  The Square Root Of 4 Should Be 2
  The Square Root Of 9 Should Be 3
  The Square Root Of 16 Should Be 4
  The Square Root Of 25 Should Be 5
  The Square Root Of 36 Should Be 6

Calculate Square Roots (template with embedded arguments)
  [Template]  The Square Root Of ${squareroot} Should Be ${result}
  1     1
  4     2
  9     3
  16    4
  25    5
  36    6

