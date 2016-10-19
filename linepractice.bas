SCREEN 12

'LINE (50, 80)-(200, 300), 14, BF
DO WHILE a = 0
    FOR x = 1 TO 640
        FOR y = 1 TO 480
            LINE (320, 240)-(x, y), INT(RND * 14),
        NEXT y
    NEXT x
LOOP
