       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAP-YEAR-CHECK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  YEAR-INPUT      PIC 9(4).

       01  MOD-4           PIC 9(2).
       01  MOD-100         PIC 9(2).
       01  MOD-400         PIC 9(3).

       01  YEAR-DISPLAY    PIC Z(3)9.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY "Enter a year: "
           ACCEPT YEAR-INPUT

           COMPUTE MOD-4   = FUNCTION MOD(YEAR-INPUT, 4)
           COMPUTE MOD-100 = FUNCTION MOD(YEAR-INPUT, 100)
           COMPUTE MOD-400 = FUNCTION MOD(YEAR-INPUT, 400)

           MOVE YEAR-INPUT TO YEAR-DISPLAY

           DISPLAY " "
           IF MOD-4 = 0 AND (MOD-100 NOT = 0 OR MOD-400 = 0)
               DISPLAY YEAR-DISPLAY " is a LEAP YEAR."
           ELSE
               DISPLAY YEAR-DISPLAY " is NOT a leap year."
           END-IF

           STOP RUN.
