import 'dart:async';

main() {

  final streamController = new StreamController<String>();
  final streamBroadcast = new StreamController<String>.broadcast();  // multiples listen

  streamController.stream.listen(
    (data) => print('Despegando $data'),
    onError: (err) => print('Error! $err'),
    onDone: () => print('Misión completa!'),
    cancelOnError: false
  );

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston, tenemos un problema');
  streamController.sink.add('Apollo 14');

  streamController.sink.close();

  // streamController.sink.add('Apollo 15');


  print('Fin');
}