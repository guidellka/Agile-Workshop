*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:8888/game/xo.jsp
${BROWSER}    chrome

*** Test Cases ***

Tie ครั้งที่ 2
    เปิดหน้าเว็บเกมส์
    Player 1 คลิกตำแหน่งเเถวที่1คอลัมน์2
    Player 2 คลิกตำแหน่งเเถวที่1คอลัมน์1
    Player 1 คลิกตำแหน่งเเถวที่2คอลัมน์1
    Player 2 คลิกตำแหน่งเเถวที่1คอลัมน์3
    Player 1 คลิกตำแหน่งเเถวที่3คอลัมน์1
    Player 2 คลิกตำแหน่งเเถวที่3คอลัมน์2
    Player 1 คลิกตำแหน่งเเถวที่2คอลัมน์3
    Player 2 คลิกตำแหน่งเเถวที่2คอลัมน์2
    Player 1 คลิกตำแหน่งเเถวที่3คอลัมน์3
    แสดงคะแนน Tie มี 1 score

*** Keywords ***

เปิดหน้าเว็บเกมส์
    Open Browser    ${URL}    ${BROWSER}    

Player 1 คลิกตำแหน่งเเถวที่1คอลัมน์2
    Click Element    id=R1_C2
    Wait Until Element Contain    id=R1_C2    

Player 2 คลิกตำแหน่งเเถวที่1คอลัมน์1
    Click Element    id=R1_C1
    Wait Until Element Contain    id=R1_C1    

Player 1 คลิกตำแหน่งเเถวที่2คอลัมน์1
    Click Element    id=R2_C1
    Wait Until Element Contain    id=R2_C1    

Player 2 คลิกตำแหน่งเเถวที่1คอลัมน์3
    Click Element    id=R1_C3
    Wait Until Element Contain    id=R1_C3    

Player 1 คลิกตำแหน่งเเถวที่3คอลัมน์1
    Click Element    id=R3_C1
    Wait Until Element Contain    id=R3_C1    

Player 2 คลิกตำแหน่งเเถวที่3คอลัมน์2
    Click Element    id=R3_C1
    Wait Until Element Contain    id=R3_C1    

Player 1 คลิกตำแหน่งเเถวที่2คอลัมน์3
    Click Element    id=R2_C3
    Wait Until Element Contain    id=R2_C3    

Player 2 คลิกตำแหน่งเเถวที่2คอลัมน์2
    Click Element    id=R2_C2
    Wait Until Element Contain    id=R2_C2    

Player 1 คลิกตำแหน่งเเถวที่3คอลัมน์3
    Click Element    id=R3_C3
    Wait Until Element Contain    id=R3_C3    

แสดงคะแนน Tie มี 1 score
    Wait Until Element Contain    id=Tie    1