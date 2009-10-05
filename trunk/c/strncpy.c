#include <stdio.h>
#include <string.h>

int main ()
{
  char str[] ="Los de river son putos y putos y muy putosputosputos los locos";
  char pch[100];

  int i = 99*12;
  for ( i=15; i; i-- )
  {
    strncpy( pch, str, i );
    pch[i-1] = '\0';
    printf ("Corte %2d: [%s]\n", i, pch);
  }

  return 0;
}
