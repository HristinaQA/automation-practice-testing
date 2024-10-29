*** Settings ***
Documentation     Suite description
Library           SeleniumLibrary    timeout=60
Library           BuiltIn
Library           String
Resource    ../resources/Keywords/Search.robot
Resource    ../resources/PageObjects/Search.robot
Resource    ../resources/PageObjects/PDP.robot
Resource    ../resources/Resources/TestData.robot

*** Keywords ***

Search an item
    Click Element         ${searchBar}
    Input Text    ${searchBar}    ${dresskeyword}
    Click Element    ${searchMagnifyingGlass}
    Wait Until Element Is Visible    ${PrintedDress}
    
Add to Cart
    Click Element         ${SecondDress}
    Click Element        ${blackColoroptionPDP}
    Click Element         ${addToCartPDP}
    Wait Until Element Is Visible         ${cartOverlay}
Finish TestCase
    Close Browser
