SCREEN 12
_FULLSCREEN
DIM rn AS INTEGER
FOR x = 32 TO 640 STEP 64
    FOR y = 43 TO 480 STEP 64
        rn = INT(RND * 15) + 1
        CIRCLE (x, y), 32, rn
        PAINT STEP(0, 0), rn
        _DELAY .05
    NEXT y
NEXT x
