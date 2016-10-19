SCREEN 12
_FULLSCREEN
DIM x AS DOUBLE
DIM y AS DOUBLE
DIM r AS DOUBLE
DIM rn AS INTEGER
DIM exi AS STRING
r = 50
DO
    IF r <= 5 THEN r = 5
    i = _MOUSEINPUT
    IF _MOUSEWHEEL = 1 THEN
        r = r - .1
    END IF
    IF _MOUSEWHEEL = -1 THEN
        r = r + .1
    END IF
    IF _MOUSEBUTTON(3) THEN
        INPUT "Would you like to exit? Y/N:", exi
        IF LCASE$(exi) = "y" THEN SYSTEM
    END IF
    IF _MOUSEBUTTON(1) THEN
        rn = INT(RND * 15) + 1
        x = _MOUSEX
        y = _MOUSEY
        CIRCLE (x, y), r, rn
        PAINT STEP(0, 0), rn
    END IF
LOOP
