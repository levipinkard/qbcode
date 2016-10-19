SCREEN 12
_FULLSCREEN
x = 300
y = 200
oldx = 300
oldy = 200
chx = 1
chy = 1
SLEEP
DO
    CIRCLE (oldx, oldy), 10, 0
    CIRCLE (x, y), 10, 14
    oldx = x
    oldy = y
    x = x + chx
    y = y + chy
    IF x > 630 OR x < 10 THEN chx = chx * -1
    IF y > 470 OR y < 10 THEN chy = chy * -1
    _DELAY .01
LOOP
