*** Settings ***
Documentation     A test suite for valid login.
...
...               Keywords are imported from the resource file
Default Tags      positive

*** Test Cases ***
Check the result of the sum of 2 numbers
    ${sum}=     Sum of 2 numbers    2    4
    Should Be Equal As Integers    ${sum}    6

Check the result of the substraction of 2 numbers
    ${diff}=     Substrct 2 numbers    4    2
    Should Be Equal As Integers    ${diff}    2

Check the result of the multiplication of 2 numbers
    ${product}=     Multiple 2 numbers    4    2
    Should Be Equal As Integers    ${product}    9

Check the result of the division of 2 numbers
    ${div}=     Division of 2 numbers    6    2
    Should Be Equal As Integers    ${div}    3

*** Keywords ***
Sum of 2 numbers
    [Arguments]     ${num1}    ${num2}   
    ${res}    Evaluate    ${num1}+${num2}
    [Return]    ${res}
    

Substrct 2 numbers
    [Arguments]     ${num1}    ${num2}   
    ${res}    Evaluate    ${num1}-${num2}
    [Return]    ${res}


Multiple 2 numbers  
    [Arguments]     ${num1}    ${num2}   
    ${res}    Evaluate    ${num1}*${num2}
    [Return]    ${res}


Division of 2 numbers
    [Arguments]     ${num1}    ${num2}   
    ${res}    Evaluate    ${num1}/${num2}
    [Return]    ${res}