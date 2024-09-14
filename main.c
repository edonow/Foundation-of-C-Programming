# include  <stdio.h>
# include  <string.h>
# include  <stdlib.h>
# include  <math.h>
# include  <time.h>
# include  "sample.h"

int main(int argc, char *argv[]){
    if (argc != 2) {
        printf("Usage: ./[*.exe] [spme characters] n\n");
        return 1;
    }
    int n = strlen(argv[1]);
    char *word;
    word = malloc((n+1) * sizeof(char));
    strcpy(word, argv[1]);

    printf(" ----> %s \n", word);


    output();

    free(word);
    return 0;
}
