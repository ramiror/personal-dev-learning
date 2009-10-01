/* strtok example */
#include <stdio.h>
#include <string.h>

int main ()
{
  char str[] ="Los de river son putos y putos y muy putosputosputos los locos";
  char * pch;
  printf ("Contando tokens de: '%s'\n",str);
  pch = strtok (str,"putos");
  int tokens=0;
  while (pch != NULL)
  {
    printf("pch='%s', tokens=%d\n", pch, tokens );
    tokens++;
    pch = strtok (NULL, "putos");
  }
  printf("Vi %d putos\n", tokens-2);
  return 0;
}
