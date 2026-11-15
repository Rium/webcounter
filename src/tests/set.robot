*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When an amount is added the counter goes up by that amount
    Go To  ${HOME_URL}
    Fill Text  input[name="amount"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa