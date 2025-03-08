#include <stdio.h>
#include <unistd.h>
int main()
{
	int h=7;
	while(h--)
	{
		printf("Git Person: Hello SpincyAlex %d\n",h);
		sleep(1);
	}
	return 0;
}
