# Loop Conditions


You may find the  text files of the codes [here](./txtFiles/)

---
In our previous languages learned such as C/C++, Java, and PHP, we have used Loop Conditions such as `while`, `do while`, `foreach`, and `for`. 

- All of them checked if the condition was true before executing the code inside the loop.
- If the condition is false, the code will not execute.

- In COBOL, however, it inverses the logic.
    - if the condition is false, the code inside the loop will execute.
    - if the condition is true, the code inside the loop will **not** or **stop** execute.
    - This is because of the keyword `UNTIL` used in COBOL loops.

| Other Languages                         | COBOL                                                                   |
| --------------------------------------- | ----------------------------------------------------------------------- |
| Executes loops if condition is **true** | Executes loop if condition is **false**                                 |
| `do {} while (condition)`               | `PERFORM WITH TEST AFTER UNTIL condition`                               |
| `while (condition)`                     | `PERFORM UNTIL condition` or `PERFORM WITH TEST BEFORE UNTIL condition` |
| `for (int ctr = 0; condition; ctr++){}` | `PERFORM VARYING ctr FROM 0 BY 1 UNTIL condition`                       |

In this COBOL sample below from [loops.cbl](txtFiles/loops.txt):
```cobol
        PERFORM UNTIL addAnother = 'y'
            DISPLAY "Enter your name: "
            ACCEPT inputName
   
            DISPLAY "Enter your age: "
            ACCEPT inputAge
   
            DISPLAY "Hello, " inputName
            ". " inputAge " years old."
   
            DISPLAY "Do you want to exit? (y/n): "
            ACCEPT addAnother
        END-PERFORM.
```
As it reads, 
<blockquote>
    <em>
        Perform this code until the <code>addAnother</code>  variable is equal to <code>'y'</code>
    </em>
</blockquote>
<br>
Which is opposite to something like this in C/C++  from [loopC.c](txtFiles/loopC.txt):

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

or from Python from ([loopPy.py](txtFiles/loopsPY.txt)):

```python
# There is no do-while loop in Python, so we simulate it like this
while addAnother.lower() != 'n':
	# Code here
```
<blockquote>
    <em>
        While the <code>addAnother</code> is not equal to <code>'n'</code>, perform this code.
    </em>
</blockquote>
<br>


<hr><br>
<img src="COBOL Loop Diagram.drawio.png" alt="COBOL Loop Diagram" width="250"/>
