*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    http://localhost:8080/game/index.jsp
${BROWSER}    chrome
*** Test Cases ***
เสมอครั้งที่ 1
    เปิดหน้าเว็ปXO
    P1 Click R1C1
    P2 Click R1C3
    P1 Click R3C1
    P2 Click R2C1
    P1 Click R2C3
    P2 Click R2C2
    P1 Click R1C2
    P2 Click R3C2
    P1 Click R3C3
    Score Tie เป็น 1
    ปิดหน้าเว็ป
*** Keywords ***
เปิดหน้าเว็ปXO
    Open Browser    ${URL}    ${BROWSER}
P1 Click R1C1
    Click Element    id=R1_C1
    Wait Until Element Contains    id=R1_C1    X
P2 Click R1C3
    Click Element    id=R1_C3
    Wait Until Element Contains    id=R1_C3    O
P1 Click R3C1
    Click Element    id=R3_C1
    Wait Until Element Contains    id=R3_C1    X
P2 Click R2C1
    Click Element    id=R2_C1
    Wait Until Element Contains    id=R2_C1    O
P1 Click R2C3
    Click Element    id=R2_C3
    Wait Until Element Contains    id=R2_C3    X
P2 Click R2C2
    Click Element    id=R2_C2
    Wait Until Element Contains    id=R2_C2    O
P1 Click R1C2
    Click Element    id=R1_C2
    Wait Until Element Contains    id=R1_C2    X
P2 Click R3C2
    Click Element    id=R3_C2
    Wait Until Element Contains    id=R3_C2    O
P1 Click R3C3
    Click Element    id=R3_C3
    Wait Until Element Contains    id=R3_C3    O
Score Tie เป็น 1
    Wait Until Element Contains    id=TieScore    1
ปิดหน้าเว็ป
    Close Browser