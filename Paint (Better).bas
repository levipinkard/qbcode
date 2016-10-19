'Levi Pinkard Period 1
'Left mouse to paint
'Right mouse to erase
'Middle mouse for commands
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
'Sets all booleans as 0
boxbool = 0
rn = 15
rnnbool = 0
r = 25
bfbool = 0
paintbool = 0
circlebool = 0
'Prints title
PRINT "                            Levi's Paint Program"
DO
    'Draws border to avoid painting over it
    LINE (0, 0)-(220, 39), 0, BF
    LINE (220, 20)-(385, 39), 0, BF
    LINE (385, 0)-(640, 39), 0, BF
    LINE (620, 460)-(20, 40), 8, B
    LINE (0, 0)-(19, 480), 0, BF
    LINE (19, 461)-(640, 480), 0, BF
    LINE (621, 480)-(640, 0), 0, BF
    'Generates random color for when random is selected
    rnn = INT(RND * 15 + 1)
    'Stop brush size/radius from going smaller than 0
    IF r <= 0 THEN r = 0
    'Reads updated mouse input
    i = _MOUSEINPUT
    IF _MOUSEBUTTON(3) THEN
        VIEW PRINT 2 TO 2
        'Opens command line
        INPUT "Enter command: ", exi
        'Finds what cmand is typed
        IF LCASE$(exi) = "reset" THEN
            bfbool = 0
            rn = 15
            rnnbool = 0
            paintbool = 0
            circlebool = 0
            boxbool = 0
            r = 25
        ELSEIF LCASE$(exi) = "boxfilled" THEN
            bfbool = 1
            boxbool = 1
            CLS 2
            VIEW PRINT
        ELSEIF LCASE$(exi) = "quit" THEN SYSTEM
        ELSEIF LCASE$(exi) = "paint" THEN
            boxbool = 0
            circlebool = 0
            paintbool = 0
            bfbool = 0
            CLS 2
            VIEW PRINT

        ELSEIF LCASE$(exi) = "box" THEN
            paintbool = 0
            circlebool = 0
            bfbool = 0
            boxbool = 1
            CLS 2
            VIEW PRINT
        ELSEIF LCASE$(exi) = "circle" THEN
            circlebool = 1
            boxbool = 0
            bfbool = 0
            paintbool = 0
            CLS 2
            VIEW PRINT
        ELSEIF LCASE$(exi) = "circlefilled" THEN
            paintbool = 1
            boxbool = 0
            bfbool = 0
            circlebool = 1
            CLS 2
            VIEW PRINT
        ELSEIF LCASE$(exi) = "exit" THEN
            SYSTEM
            CLS 2
            VIEW PRINT
        ELSEIF LCASE$(exi) = "size" THEN
            INPUT "Brush size: ", r
            CLS 2
            VIEW PRINT
        ELSEIF LCASE$(exi) = "color" THEN
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
        ELSEIF LCASE$(exi) = "clear" THEN
            CLS
            VIEW PRINT
            PRINT "                            Levi's Paint Program"
        ELSE
            CLS 2
            VIEW PRINT
            PRINT "Command not found..."
        END IF
    END IF
'Main paint on left mouse button
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
    IF _MOUSEBUTTON(2) THEN
        x = _MOUSEX
        y = _MOUSEY
        x1 = x + 1 / 4 * r
        y1 = y + 1 / 4 * r
        x2 = x - 1 / 4 * r
        y2 = y - 1 / 4 * r
        LINE (x1, y1)-(x2, y2), 0, BF
    END IF
LOOP

