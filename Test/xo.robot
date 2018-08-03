*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:8888/game/xo.jsp
${BROWSER}    chrome

*** Test Cases ***

player 2 ชนะ เเนวนอนบนสุด
    เปิดหน้าเว็บเกมส์
    คลิกตำแหน่งเเถวที่2คอลัมน์1
    คลิกตำแหน่งเเถวที่1คอลัมน์1
    คลิกตำแหน่งเเถวที่2คอลัมน์3
    คลิกตำแหน่งเเถวที่1คอลัมน์2
    คลิกตำแหน่งเเถวที่3คอลัมน์2
    คลิกตำแหน่งเเถวที่1คอลัมน์3
    แสดงคะแนน Player2 มี 1 score

*** Keywords ***

เปิดหน้าเว็บเกมส์
    Open Browser    ${URL}    ${BROWSER}

คลิกตำแหน่งเเถวที่2คอลัมน์1
    Click Element    id=R2_C1
    Wait Until Element Contain    id=R2_C1    X

คลิกตำแหน่งเเถวที่1คอลัมน์1
    Click Element    id=R1_C1
    Wait Until Element Contain    id=R1_C1    O

คลิกตำแหน่งเเถวที่2คอลัมน์3
    Click Element    id=R2_C3
    Wait Until Element Contain    id=R2_C3    X

คลิกตำแหน่งเเถวที่1คอลัมน์2
    Click Element    id=R1_C2
    Wait Until Element Contain    id=R1_C2    O

คลิกตำแหน่งเเถวที่3คอลัมน์2
    Click Element    id=R3_C2
    Wait Until Element Contain    id=R3_C2    X

คลิกตำแหน่งเเถวที่1คอลัมน์3
    Click Element    id=R1_C3
    Wait Until Element Contain    id=R1_C3    O

แสดงคะแนน Player2 มี 1 score
    Wait Until Element Contain    id=Player2    1