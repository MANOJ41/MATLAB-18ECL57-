# include<stdio.h>
# include<math.h>
float y[10];
main()
{
//the two sequences can be of different lengths, no need to zero pad for this
float h[4] = { 2,2,2,2};
float x[4] ={1,2,3,4};

int xlen=4;
int hlen=4;
int N=xlen+hlen-1;
int k,n;
for(n=0;n<N;n++) //outer loop for y[n] array
{ y[n]=0;
for(k=0;k<hlen;k++) //inner loop for computing each y[n] point
{ if (((n-k)>=0) & ((n-k)<xlen))
y[n]=y[n]+h[k]*x[n-k];//compute output
} //end of inner for loop

} //end of outer for loop


 printf("Linear Convolution\n");
 for(k=0;k<N;k++)
 printf("%f\n",y[k]);
}
