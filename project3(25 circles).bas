'Levi Pinkard Period 2
SCREEN 12
_FULLSCREEN
DIM r AS INTEGER
DIM x AS INTEGER
DIM y AS INTEGER
DIM rn AS INTEGER
FOR z = 1 TO 25
    'Generates random X and Y
    x = INT(RND * 639) + 1
    y = INT(RND * 479) + 1
    'Generates random radius
    r = INT(RND * 49) + 5
    'Stops circles from going off of screen
    IF x + r >= 640 THEN x = 640 - r - 5
    IF y + r >= 480 THEN y = 480 - r - 5
    IF x <= r THEN x = x + r + 5
    IF y <= r THEN y = y + r + 5
    'Generates random random color
    rn = INT(RND * 15) + 1
    'Circle
    CIRCLE (x, y), r, rn
    'Stops overlapping circles from not painting properly
    IF POINT(x, y) = rn THEN
        IF rn = 15 THEN rn = INT(RND * 14) + 1
        CIRCLE (x, y), r, rn + 1
        PAINT (x, y), rn + 1
    ELSE
        PAINT STEP(0, 0), rn
    END IF
NEXT z
SLEEP
