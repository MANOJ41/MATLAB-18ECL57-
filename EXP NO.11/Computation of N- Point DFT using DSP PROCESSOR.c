#include <stdio.h>
#include <math.h>
 float y[16];
main()
{
  //for 8 point DFT to store real & imaginary
 float x[4]={1,3,2,5}; //input only real sequence
 float w;
 int n,k,k1,N=8,xlen=4;
 for(k=0;k<2*N;k=k+2)
 {
 y[k]=0; y[k+1]=0; //initialize real & imag parts
 k1=k/2; //actual k index
 for(n=0;n<xlen;n++)
{
 w= -2*3.14*k1*n/N; //careful about minus sign
 y[k]=y[k]+x[n]*cos(w);
 y[k+1]=y[k+1]+x[n]*sin(w);
}
printf("%f+j%f \n",y[k],y[k+1]);
}
}//end of main
