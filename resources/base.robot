*** Settings ***
Documentation     This File Implements the initial Structure of the Project

Library     Browser
Library     String
Library     ../lib/environment.py

Resource    pages/login_page.robot
Resource    pages/account_page.robot
Resource    pages/search_result.robot
Resource    pages/product_page.robot


*** Keywords ***
Start Test
    New Browser     ${BROWSER}      ${HEADLESS}
    ${WEBSITE_URL}  get Base URL    ${ENV}
    Set Global Variable     ${WEBSITE_URL}
