'Levi Pinkard
'Comp Prog Pr 2
'08/04/16 Calculator

'INIT Block
DIM SHARED num1 AS DOUBLE
DIM SHARED num2 AS DOUBLE
DIM SHARED sum AS DOUBLE
DIM SHARED mul AS DOUBLE
DIM SHARED div AS DOUBLE
DIM SHARED diff AS DOUBLE
DIM SHARED modulus AS DOUBLE
DIM SHARED again1 AS STRING
DIM SHARED again2 AS INTEGER

'Main Module
COLOR 10
again2 = 1
DO WHILE again2 = 1
    CALL getinput
    CALL math
    CALL table
    CALL again
LOOP
END

'Subroutines
SUB error1
PRINT "Can't divide by zero! Try again! ";

END SUB

SUB getinput
INPUT "Please enter a number: ", num1
INPUT "Thanks! Now enter another number: ", num2

END SUB

SUB again
INPUT "Calculate another? Y/N: ", again1
again2 = 0
IF again1 = "y" or again1 = "Y" or again1= "yes" THEN again2 = 1
END SUB

SUB math
sum = num1 + num2
diff = num1 - num2
mul = num1 * num2
IF num2 <> 0 THEN
    div = num1 / num2
    modulus = num1 MOD num2
END IF
END SUB

SUB table
PRINT "The Math Table"
PRINT num1; "+"; num2; "="; sum
PRINT num1; "-"; num2; "="; diff
PRINT num1; "x"; num2; "="; mul
IF num2 <> 0 THEN
    PRINT num1; "ö"; num2; "="; div
    PRINT num1; "MOD"; num2; "="; modulus
ELSE
    PRINT "Can't divide by zero"
END IF
END SUB


