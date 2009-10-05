/* if example */
#include <stdio.h>
#include <string.h>

int main ()
{
  char uno[]  = "Los de river son putos y putos y muy putosputosputos los locos";
  char espacioGordo[999];
  char dos[] = "Hola mundox";
  char tres[] = "Hola mundo";

  if ( *dos == *tres )
  {
    printf( "iguales\n" );
  }
  else 
  {
    printf( "Ni el blanco del ojo\n" );
  }

  printf( "Conclisuón: *dos es el primer char solamente");
}
