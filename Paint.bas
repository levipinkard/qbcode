SCREEN 12
'_FULLSCREEN
DIM x AS DOUBLE
DIM y AS DOUBLE
DIM x2 AS DOUBLE
DIM y1 AS DOUBLE
DIM y2 AS DOUBLE
DIM r AS DOUBLE
DIM rn AS INTEGER
DIM exi AS STRING
DIM x1 AS DOUBLE
DIM bfbool AS INTEGER
DIM paintbool AS INTEGER
DIM circlebool AS INTEGER
DIM boxbool AS INTEGER
DIM color1 AS STRING
DIM filename AS STRING
boxbool = 0
rn = 15
rnnbool = 0
r = 25
bfbool = 0
paintbool = 0
circlebool = 0
PRINT "                            Levi's Paint Program"
DO
    LINE (0, 0)-(220, 39), 0, BF
    LINE (220, 20)-(385, 39), 0, BF
    LINE (385, 0)-(640, 39), 0, BF
    LINE (620, 460)-(20, 40), 8, B
    LINE (0, 0)-(19, 480), 0, BF
    LINE (19, 461)-(640, 480), 0, BF
    LINE (621, 480)-(640, 0), 0, BF
    rnn = INT(RND * 15 + 1)
    IF r <= 0 THEN r = 0
    i = _MOUSEINPUT
    IF _MOUSEBUTTON(3) THEN
        VIEW PRINT 2 TO 2
        INPUT "Enter command: ", exi
        IF LCASE$(exi) = "reset" THEN
            bfbool = 0
            rn = 15
            rnnbool = 0
            paintbool = 0
            circlebool = 0
            boxbool = 0
            r = 25
        END IF
        IF LCASE$(exi) = "boxfilled" THEN
            bfbool = 1
            boxbool = 1
            CLS 2
            VIEW PRINT
        END IF
        IF LCASE$(exi) = "quit" THEN SYSTEM
        IF LCASE$(exi) = "paint" THEN
            boxbool = 0
            circlebool = 0
            paintbool = 0
            bfbool = 0
            CLS 2
            VIEW PRINT
        END IF
        IF LCASE$(exi) = "box" THEN
            paintbool = 0
            circlebool = 0
            bfbool = 0
            boxbool = 1
            CLS 2
            VIEW PRINT
        END IF
        IF LCASE$(exi) = "circle" THEN
            circlebool = 1
            boxbool = 0
            bfbool = 0
            paintbool = 0
            CLS 2
            VIEW PRINT
        END IF
        IF LCASE$(exi) = "circlefilled" THEN
            paintbool = 1
            boxbool = 0
            bfbool = 0
            circlebool = 1
            CLS 2
            VIEW PRINT
        END IF
        IF LCASE$(exi) = "exit" THEN
            SYSTEM
            CLS 2
            VIEW PRINT
        END IF
        IF LCASE$(exi) = "size" THEN
            INPUT "Brush size: ", r
            CLS 2
            VIEW PRINT
        END IF
        IF LCASE$(exi) = "color" THEN
            INPUT "What color? ", color1
            IF LCASE$(color1) = "white" THEN
                rnnbool = 0
                rn = 15
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "red" THEN
                rnnbool = 0
                rn = 4
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "green" THEN
                rnnbool = 0
                rn = 2
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "blue" THEN
                rnnbool = 0
                rn = 1
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "yellow" THEN
                rnnbool = 0
                rn = 14
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "brown" THEN
                rnnbool = 0
                rn = 6
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "black" THEN
                rnnbool = 0
                rn = 0
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "pink" THEN
                rnnbool = 0
                rn = 13
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "gray" THEN
                rnnbool = 0
                rn = 8
                CLS 2
                VIEW PRINT
            ELSEIF LCASE$(color1) = "random" THEN
                rnnbool = 1
                CLS 2
                VIEW PRINT
            ELSE
                rn = 15
                CLS 2
                VIEW PRINT
            END IF
        END IF
        IF LCASE$(exi) = "clear" THEN
            CLS
            VIEW PRINT
            PRINT "                            Levi's Paint Program"
        END IF
    END IF
    IF _MOUSEBUTTON(1) THEN
        IF boxbool = 1 THEN
            i = _MOUSEINPUT
            IF rnnbool = 1 THEN rn = INT(RND * 15) + 1
            x = _MOUSEX
            y = _MOUSEY
            x1 = x + r
            y1 = y + r
            x2 = x - r
            y2 = y - r
            IF bfbool = 0 THEN
                LINE (x1, y1)-(x2, y2), rn, B
            ELSEIF bfbool = 1 THEN
                LINE (x1, y1)-(x2, y2), rn, BF
            END IF
        ELSEIF boxbool = 0 THEN
            IF circlebool = 0 THEN
                IF rnnbool = 1 THEN rn = INT(RND * 15) + 1
                x = _MOUSEX
                y = _MOUSEY
                x1 = x + 1 / 4 * r
                y1 = y + 1 / 4 * r
                x2 = x - 1 / 4 * r
                y2 = y - 1 / 4 * r
                LINE (x1, y1)-(x2, y2), rn, BF
            ELSEIF circlebool = 1 THEN
                IF rnnbool = 1 THEN rn = INT(RND * 15) + 1
                x = _MOUSEX
                y = _MOUSEY
                CIRCLE (x, y), r, rn
                IF paintbool = 1 THEN PAINT (x, y), rn, rn
            END IF
        END IF
    END IF
LOOP

