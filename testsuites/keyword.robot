*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER}  Chrome

#*** Keywords ***
#Open Square Roots
#| Open Browser | http://www.ict.rocks/squareroots | ${BROWSER}
#| Title Should Be | Square Roots Rox!

*** Test Cases ***
Verify page title
  [Setup]  Open Browser  http://www.ict.rocks/squareroots  ${BROWSER}
  Title Should Be  Square Roots- Let the Muppets do the work
  Click Element  css=button
  Element Text Should Be  xpath=/html/body/div/div/div/div/div[4]/div  Oops... We can't do any Square Roots on this input
  [Teardown]  Close Browser
