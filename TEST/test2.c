#include <stdio.h>
#include <string.h>

#define UPP 10000000

int judge(int ori_num, int base)
{
	int tra_num=0;
	int tem_num=ori_num;
	int i=0;

	while(tem_num)
	{
		tra_num = tra_num * base + tem_num % base;
		tem_num /= base;
	}
	
	return ori_num == tra_num;

}

int main()
{
	int sum=0;
	int i=0;

	for(; i<UPP; i++)
	{
		sum = sum + i * judge(i,10) * judge(i,2);
	}	
	
	printf("Here is the sum: %d\n", sum);

	return 0;
}
