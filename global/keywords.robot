*** Settings ***
Resource       vars.robot
Library  Selenium2Library

*** Keywords ***
Start App
  Open Browser  ${URL}  ${BROWSER}
  Maximize Browser Window
  