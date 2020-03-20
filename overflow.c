#include <stdio.h>
#include <unistd.h>

void overflow(){
	char string[256] = {0}; 
	read(0, string, 512);
	printf("%s", string);
}

int main(){
	overflow();
	return(0);
}

