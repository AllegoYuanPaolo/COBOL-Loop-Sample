#include <stdio.h>
#include <string.h>



int main(){
    char addAnother = 'n';
    
    do {
        char name[17];
        int age;

        printf("Enter your name: ");
        scanf("%16s", name);

        printf("Enter your age: ");
        scanf("%d", &age);

        printf("\nHello, %s. %d years old.\n", name, age);

        printf("Do you want to add another? (y/n): ");
        scanf(" %c", &addAnother);

    } while (addAnother == 'y' || addAnother == 'Y');
}