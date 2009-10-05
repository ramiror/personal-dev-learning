/* if example */
#include <stdio.h>

int main ()
{
  int lapapa = 2;
  int laotrapapa = 1;
  int *uno = &lapapa;
  int *dos = &laotrapapa;

  //uno = &lapapa;
  //*uno = lapapa;

  if ( *dos == *uno )
  {
    printf( "iguales\n" );
  }
  else 
  {
    printf( "Ni el blanco del ojo\n" );
  }

}
