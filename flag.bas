DIM r AS INTEGER
DIM c AS INTEGER

COLOR 15, 4
CLS

FOR r = 1 TO 15 STEP 2
    FOR c = 1 TO 80
        LOCATE r, c
        PRINT "Û"
    NEXT c
NEXT r
