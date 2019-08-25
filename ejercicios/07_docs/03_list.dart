main() {
  List<int> lista = [1, 2, 3, 4, 5];
  List<int> lista2;
  List<int> lista3 = [3, 1, 2, 15, -10];
  List<String> nombres = ['Tony', 'Peter'];

  print('Length: ${lista.length}');
  print('First: ${lista[0]}');
  print('First: ${lista.first}');
  print('Last: ${lista.last}');
  print('is empty: ${lista2 == null}');
  print('as Map: ${ lista.asMap() }');

  Map<int, dynamic> listaMapa = lista.asMap();
  print('ListaMapa: ${ listaMapa[4] }');

  print('index of: ${ nombres.indexOf('Peter') }');

  // int mayor3 = lista.indexWhere( (value) {
  //   if ( value > 3 ) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // });
  int mayor3 = lista.indexWhere((numero) => (numero > 3) ? true : false);

  print('index where: ${ mayor3 }');
  
  print('Remove: ${ nombres.remove('Tony') } :: $nombres');
  
  lista.shuffle();
  print('Shuffle: ${ lista } ');

  lista3.sort();
  print('Sort: ${ lista3 }');
  print('Reverse: ${ lista3.reversed.toList() }');

  nombres.forEach( (nombre) {
    nombre = nombre.toUpperCase();
    print(nombre);
  });
  print('Nombres: $nombres');

  final newList = nombres.map( (nombre) => nombre.toUpperCase() ).toList();
  print('new list: $newList');
}
