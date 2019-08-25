
main() {

  Future<String> timeout = Future.delayed( Duration(seconds: 3), () {
    print('3 segundos despues');
    return 'Retorno del future';
  } );

  timeout.then( (o) => print(o) );

  print('fin del main');

}