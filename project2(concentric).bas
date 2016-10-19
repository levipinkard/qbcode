'Levi Pinkard Period 2
SCREEN 12
_FULLSCREEN
DIM r AS INTEGER
DIM rn AS INTEGER
r = 200
DO WHILE r >= 5
    'Generates random color
    rn = INT(RND * 15) + 1
    'Circle
    CIRCLE (320, 240), r, rn
    PAINT STEP(0, 0), rn
    'Makes it concentric
    r = r - 15
LOOP

