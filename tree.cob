       IDENTIFICATION DIVISION.
       PROGRAM-ID. TreeStars.
       AUTHOR. IIRO.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  ROW              PIC 99 VALUE 1.
       01  NUM-SPACES       PIC 99 VALUE 6.
       01  NUM-STARS        PIC 99 VALUE 1.
       01  SPACE-FILLER     PIC X(20) VALUE ALL ' '.
       01  STAR-FILLER      PIC X(20) VALUE ALL '*'.

       PROCEDURE DIVISION.
       
       Display-Tree.
           PERFORM VARYING ROW FROM 1 BY 1 UNTIL ROW > 10
               MOVE 10 TO NUM-SPACES
               SUBTRACT ROW FROM NUM-SPACES
                   DISPLAY SPACE-FILLER(1:NUM-SPACES) 
                       WITH NO ADVANCING
               PERFORM VARYING NUM-STARS FROM 1 BY 1 UNTIL NUM-STARS > (
      -          2 * ROW - 1)
                   DISPLAY '*' WITH NO ADVANCING
               END-PERFORM
               DISPLAY " "
           END-PERFORM.
           
       STOP RUN.
