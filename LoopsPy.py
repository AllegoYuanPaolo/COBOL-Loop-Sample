addAnother = ""

while addAnother.lower() != "n":  # While the user input is NOT 'n'
   
    name = input("Enter your name: ")
    age = int(input("Enter your age: "))

    print()
    print(f"Hello, {name}. {age} years old")
    
    addAnother = input("Do you want to add another? (y/n): ")