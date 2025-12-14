# Loop Conditions

In our previous languages learned such as C/C++, Java, and PHP, we have used Loop Conditions such as `while`, `do while`, `foreach`, and `for`. 

- All of them checked if the condition was true before executing the code inside the loop.
- If the condition is false, the code will not execute.

- In COBOL, however, it inverses the logic.
    - if the condition is false, the code inside the loop will execute.
    - if the condition is true, the code inside the loop will **not** or **stop** execute.
    - This is because of the keyrord `UNTIL` used in COBOL loops.

```cobol
        PERFORM UNTIL addAnother = 'y'
            DISPLAY "Enter your name: "
            ACCEPT inputName
   
            DISPLAY "Enter your age: "
            ACCEPT inputAge
   
            DISPLAY "Your name is " inputName " and you are " inputAge " years old."
   
            DISPLAY "Do you want to exit? (y/n): "
            ACCEPT addAnother
        END-PERFORM.
```
As it reads, 
<blockquote>
    <em>
        Perform this code until the exitFlag variable is equal to <code>'y'</code>
    </em>
</blockquote>

<br>
<br>
Which is opposite to something like this in C/C++:

```c
    do {
        // code here
    } while (addAnother == 'y');
```

<blockquote>
    <em>
        While the <code>addAnother</code> is equal to <code>'y'</code>, perform this code.
    </em>
</blockquote>


| Other Languages                         | COBOL                                                                   |
| --------------------------------------- | ----------------------------------------------------------------------- |
| Executes loops if condition is **true** | Executes loop if condition is **false**                                 |
| `do {} while (condition)`               | `PERFORM WITH TEST AFTER UNTIL condition`                               |
| `while (condition)`                     | `PERFORM UNTIL condition` or `PERFORM WITH TEST BEFORE UNTIL condition` |
| `for (int ctr = 0; condition; ctr++){}` | `PERFORM VARYING ctr FROM 0 BY 1 UNTIL condition`                       |

<hr><br>
<img src="COBOl Loop Diagram.drawio.png" alt="COBOL Loop Diagram" width="250"/>
