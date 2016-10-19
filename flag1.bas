DIM r AS INTEGER
DIM c AS INTEGER

COLOR 15, 4
CLS


FOR c = 1 TO 80
    IF c >= 1 AND c <= 40 THEN
        COLOR 1, 15
        PRINT "Û";
    END IF
NEXT c
FOR r = 1 TO 100
    IF r >= 1 AND r <= 50 THEN
        COLOR 1, 15
        PRINT "Û";
    END IF
NEXT r
