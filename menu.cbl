        IDENTIFICATION DIVISION.
        PROGRAM-ID. menu.
 
        DATA DIVISION.
            WORKING-STORAGE SECTION.
           01 choice pic xx.

        PROCEDURE DIVISION.
           perform until choice = '00'
               call "SYSTEM" using "cls"

               display "Sample Menu"
               display "[1] - First Option"
               display "[2] - Second Option"
               display "[00] - Exit"
               display "Enter your choice >"
               accept choice

               evaluate choice
                   when '1'
                       call "SYSTEM" using "cls"
                       display "   First Option"
                       display "Nice, priority ka"
                       display spaces
                       call "SYSTEM" using "pause"
                   
                   when '2'
                       call "SYSTEM" using "cls"
                       display "   Second Option"
                       display "Lagi naman"
                       display spaces
                       call "SYSTEM" using "pause"
                   
                   when '00'
                       call "SYSTEM" using "cls"
                       display "Eto na, aalis na"
                   
                   when other
                       call "SYSTEM" using "cls"
                       display "Invalid choice, please try again."
                       call "SYSTEM" using "pause"
               end-evaluate
               display spaces
           end-perform

       STOP RUN.
 