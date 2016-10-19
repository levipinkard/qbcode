'Levi Pinkard
SCREEN 12
_FULLSCREEN
DIM r AS INTEGER
DIM rn AS INTEGER
r = 200
DO WHILE r >= 5
    rn = INT(RND * 15) + 1
    CIRCLE (320, 240), r, rn
    PAINT STEP(0, 0), rn
    r = r - 15
LOOP

