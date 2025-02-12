#include <stdio.h>

int main() {
    char name[50];  
    int i;  
    FILE *fptr;

    fptr = fopen("output.txt", "w");
    if (fptr == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    for (i = 0; i < 10; i++) {
        printf("Enter name %d: ", i + 1);
        scanf("%s", name);
        fprintf(fptr, "%s\n", name);
    }

    fclose(fptr);

    fptr = fopen("output.txt", "r");
    if (fptr == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    printf("\nNames from file:\n");
    while (fscanf(fptr, "%s", name) != EOF) {
        printf("%s\n", name);
    }

    fclose(fptr);
    return 0;
}
