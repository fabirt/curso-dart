import 'clases/persona.dart';

main() {
  // final Map persona = {
  //   'nombre': 'Fernando',
  //   'edad'  : 33,
  //   'bio'   : 'Nació en Argentina'
  // };

  final persona = new Persona(33, 'Fernando'); // new es opcional

  final persona2 = new Persona.persona30('María');

  // persona.nombre = 'Fernando';
  // persona.edad = 33;
  // persona.bio = 'Nació en Costa Rica';

  // persona
  //   ..nombre  = 'Fernando'
  //   ..edad    = 33;
    // ..bio     = 'Nació en Costa Rica'; privado


  print(persona2);
}
