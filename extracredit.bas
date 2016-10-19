'Levi Pinkard Period 1
SCREEN 12
DIM rn AS INTEGER
DIM x AS INTEGER
DIM y AS INTEGER
DIM r AS INTEGER
DIM rn1 AS INTEGER
DO
    r = 10
    y = 0
    FOR z = 1 TO 600 STEP 2 * r + 2 * oldr + 10
        'Increases radius
        r = r + 10
        'Sets new y value to offset new radius for next row
        y = y + 2 * r - 10
        'Draws circles on X axis
        FOR x = 1 TO 700 STEP 2 * r
            'Generates random color
            rn = INT(RND * 15) + 1
            rn1 = INT(RND * 2) + 1
            CIRCLE (x, y), r, rn
            'Random painting
            IF rn1 = 1 THEN PAINT STEP(0, 0), rn
        NEXT x
    NEXT z
LOOP
