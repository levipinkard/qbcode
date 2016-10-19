'Levi Pinkard
'Comp Prog Pr 2
'08/04/16 Calculator

'INIT Block
DIM num1 AS INTEGER
DIM num2 AS INTEGER
DIM sum AS INTEGER
DIM mul AS INTEGER
DIM div AS DOUBLE
DIM diff AS INTEGER
DIM modulus AS INTEGER

'Main Module
CLS

beginning:
COLOR 10
INPUT "Please enter a number: ", num1
INPUT "Thanks! Now enter another number: ", num2
IF num2 <> 0 THEN
    sum = num1 + num2
    div = num1 / num2
    diff = num1 - num2
    mul = num1 * num2
    modulus = num1 MOD num2
    PRINT "The Math Table"
    PRINT num1; "+"; num2; "="; sum
    PRINT num1; "-"; num2; "="; diff
    PRINT num1; "x"; num2; "="; mul
    PRINT num1; "ö"; num2; "="; div
    PRINT num1; "MOD"; num2; "="; modulus
ELSE
    PRINT "Can't divide by zero! Try again! ";
    GOTO beginning
END IF
END
