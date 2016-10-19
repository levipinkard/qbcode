SCREEN 12
_FULLSCREEN
x = 0
y = 200
oldx = 0
oldy = 200
SLEEP
FOR x = 0 TO 640
    CIRCLE (oldx, oldy), 50, 0
    CIRCLE (x, y), 50, 14
    oldx = x
    oldy = y
    _DELAY .01
NEXT x

