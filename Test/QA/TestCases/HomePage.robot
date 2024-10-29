*** Settings ***
Documentation     Suite description
Library           SeleniumLibrary    timeout=60
Library           BuiltIn
Library           String
Resource    ../resources/Keywords/Search.robot
Resource    ../resources/PageObjects/Search.robot
Resource    ../resources/PageObjects/PDP.robot
Resource    ../resources/Resources/TestData.robot

*** Test Cases ***
T01 - Search For Dress
    [Documentation]    Search For Dress
    Maximize Browser Window    # This maximizes the browser window
    Search an item
    Finish TestCase

T02 - Add Item to Cart
    [Documentation]    Search For Dress and add the item to Cart
    Maximize Browser Window    # This maximizes the browser window
    Search an item
    Add to Cart
    Finish TestCase