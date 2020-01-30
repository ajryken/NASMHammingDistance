#include <stdio.h>
#include <string.h>


char str1[] = "text";
char str2[] = "test";

int hamdist(char *a, char *b);

int main()
{
	printf("String 1: %s\n", str1);
	printf("String 2: %s\n", str2);
	printf("Hamming distance = %d\n", hamdist(str1, str2));
	return 0;
}

int hamdist(char *a, char *b)
{
	int unmatched = 0;
	for(int c = 0; a[c] != '\0'; c++) if(a[c] != b[c]) unmatched++;
	return unmatched;
}