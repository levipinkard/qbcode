DIM num1 AS DOUBLE
DIM num2 AS DOUBLE

INPUT "Please enter first number: ", num1
INPUT "Please enter second number: ", num2
CLS
PRINT "N", "N^2", "Sqr rt of N", "N^3", "N^1/3"
print "--------------------------------------------------------------------------------"
COLOR 6
FOR x = num1 TO num2
    PRINT x, x * x, SQR(x), x * x * x, x ^ 1 / 3
NEXT x
