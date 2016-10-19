DIM p AS INTEGER
SCREEN 12

DO WHILE a = 0
    'LINE (INT(RND * 640), INT(RND * 480))-(INT(RND * 640), INT(RND * 480)), INT(RND * 15) + 1, B
    p = INT(RND * 15) + 1
    CIRCLE (INT(RND * 640), INT(RND * 480)), 50, p
    PAINT STEP(0, 0), p, p
    'FOR p = 1 TO 1000000
    'NEXT p
LOOP
