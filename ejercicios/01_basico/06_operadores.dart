main() {
  
  // operadores de asignación
  int a = 10;
  int b;

  b ??= 20;  // Asignar el valor únicamente si la variable es null

  // operadores condicionales
  int c = 23;

  String respuesta = c > 25 ? 'C es mayor a 25' : 'C es menor a 25';

  int d = b ?? a;

  // operadores relacionales
  // todos retornan valores booleanos

  /*
    
    > Mayor que
    < Menor que
    >= Mayor o igual que
    <= Menor o igual que
    == Igualdad
    != Diferentes

  */

  String persona1 = 'Fernando';
  String persona2 = 'Alberto';

  int x = 20;
  int y = 30;

  // print( x > y ); // false
  // print( x < y ); // true
  // print( x >= y ); // false
  // print( x <= y ); // true

  // operadores de tipo

  int i = 10;
  String j = '10';

  // print( i is int ); // true
  // print( j is! int ); // true


}