#include<stdio.h>
#include<math.h>
float y[20];
main()
{
float x[5]={1,2,3,4,5};
float h[5]={2,1,3,4,5};

int N=5;
int k,n,i;
for(n=0;n<N;n++)
{ y[n]=0;
for(k=0;k<N;k++)
{ i=(n-k)%N;
if(i<0)

i=i+N;
y[n]=y[n]+h[k]*x[i];
}
}
printf(" the circular convolution is\n");
 for(k=0;k<N;k++)
 printf("%f \n",y[k]);
 }
