$set sourceformat"free"
        IDENTIFICATION DIVISION.
        PROGRAM-ID. loops.
 
        DATA DIVISION.
            WORKING-STORAGE SECTION.
            01 addAnother pic x value 'y'.
            01 inputName pic x(16).
            01 inputAge pic 99.
        
        PROCEDURE DIVISION.
           perform until addAnother = 'n' *> It performs the loop until user inputs 'n'
               display "Enter your name: "
               accept  inputName

               display "Enter your age: "
               accept inputAge
               
               display spaces
               display "Hello, " function trim(inputName)
               ". " inputAge " years old."

               display "Do you want to add another? (y/n): "
               accept addAnother 
               move function lower-case(addAnother) to addAnother

               display spaces
           end-perform
        
       STOP RUN.
 