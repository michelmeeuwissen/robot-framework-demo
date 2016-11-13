*** Settings ***
Library         RequestsLibrary
Library         Collections
Resource        ${CURDIR}${/}..${/}global${/}keywords.robot
Force Tags      rest
Suite setup     Create Session With REST

*** Keywords ***
Create Session With REST
  Create Session  squareRoots  ${URL}

*** Test Cases ***
Call Rest Happy Flow
  ${result}=  Get Request  squareRoots  /calc?inputValue=25
  Should Be Equal As Numbers  ${result.status_code}  200
  ${json}=    To Json  ${result.content}  pretty_print=True
  Log  ${json}
  Dictionary Should Contain Item  ${result.json()}  outputValue  5.0
