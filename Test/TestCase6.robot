*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:8888/game/xo.jsp
${BROWSER}    chrome

*** Test Cases ***

player 2 ชนะ เเนวตั้งขวาสุด
    เปิดหน้าเว็บเกมส์
    Player 1 คลิกตำแหน่งเเถวที่3คอลัมน์1
    Player 2 คลิกตำแหน่งเเถวที่1คอลัมน์3
    Player 1 คลิกตำแหน่งเเถวที่3คอลัมน์2
    Player 2 คลิกตำแหน่งเเถวที่2คอลัมน์3
    Player 1 คลิกตำแหน่งเเถวที่2คอลัมน์2
    Player 2 คลิกตำแหน่งเเถวที่3คอลัมน์3
    แสดงคะแนน Player2 มี 1 score

*** Keywords ***

เปิดหน้าเว็บเกมส์
    Open Browser    ${URL}    ${BROWSER}

Player 1 คลิกตำแหน่งเเถวที่3คอลัมน์1
    Click Element    id=R3_C1
    Wait Until Element Contain    id=R3_C1    X

Player 2 คลิกตำแหน่งเเถวที่1คอลัมน์3
    Click Element    id=R1_C3
    Wait Until Element Contain    id=R1_C3    O

Player 1 คลิกตำแหน่งเเถวที่3คอลัมน์2
    Click Element    id=R3_C2
    Wait Until Element Contain    id=R3_C2    X

Player 2 คลิกตำแหน่งเเถวที่2คอลัมน์3
    Click Element    id=R2_C3
    Wait Until Element Contain    id=R2_C3    O

Player 1 คลิกตำแหน่งเเถวที่2คอลัมน์2
    Click Element    id=R2_C2
    Wait Until Element Contain    id=R2_C2    X

Player 2 คลิกตำแหน่งเเถวที่3คอลัมน์3
    Click Element    id=R3_C3
    Wait Until Element Contain    id=R3_C3    O

แสดงคะแนน Player2 มี 1 score
    Wait Until Element Contain    id=player2Score    1