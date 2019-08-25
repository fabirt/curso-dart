/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

tarea() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de 
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  stdout.writeln('=========== Usuario 1 =============');


  stdout.writeln('¿Cúal es su nombre?');
  String nombre = stdin.readLineSync();

  stdout.writeln('¿Qué edad tienes?');
  String edad = stdin.readLineSync();
  
  stdout.writeln('¿En qué país naciste?');
  String pais = stdin.readLineSync();
  

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad'  : edad,
    'pais'  : pais
  };

  stdout.writeln('Usuario 1 sin deducciones');
  stdout.writeln( usuario );

  double salario     = 1500;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario']     = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  stdout.writeln(usuario);


  // Persona 2
  stdout.writeln('=========== Usuario 2 =============');

  stdout.writeln('¿Cúal es su nombre?');
  String nombre2 = stdin.readLineSync();

  stdout.writeln('¿Qué edad tienes?');
  String edad2 = stdin.readLineSync();
  
  stdout.writeln('¿En qué país naciste?');
  String pais2 = stdin.readLineSync();
  

  final Map<String, dynamic> usuario2 = {
    'nombre': nombre2,
    'edad'  : edad2,
    'pais'  : pais2
  };

  stdout.writeln('Usuario 2 sin deducciones');
  stdout.writeln( usuario2 );

  double salario2     = 1800;
  double deducciones2 = salario2 * 0.15;
  double salarioNeto2 = salario2 - deducciones2;

  usuario2['salario']     = salario2;
  usuario2['deducciones'] = deducciones2;
  usuario2['salarioNeto'] = salarioNeto2;

  stdout.writeln(usuario2);

}

main() {
  agregarUsuario('1');
  agregarUsuario('2');
}

void imprimir(Object mensaje) => stdout.writeln(mensaje);

String leer() => stdin.readLineSync();
  
  
Map<String, dynamic> usuarioConst({ String nombre, int edad, String pais, double salario }) {
  
  final double deducciones = (salario * 0.15);
  
  final Map<String, dynamic> usuario = {
    'nombre'      : nombre,
    'edad'        : edad,
    'pais'        : pais,
    'salario'     : salario,
    'deducciones' : deducciones,
    'salarioNeto' : salario - deducciones
  };

  return usuario;
}

agregarUsuario(String id) {

  imprimir('=========== Usuario $id =============');

  imprimir('¿Cúal es su nombre?');
  String nombre = leer();

  imprimir('¿Qué edad tienes?');
  String edad = leer();
  
  imprimir('¿En qué país naciste?');
  String pais = leer();

  imprimir('¿Cuánto es tu salario?');
  String salario = leer();
  

  final Map<String, dynamic> usuario = usuarioConst(
    nombre: nombre,
    edad: int.parse(edad),
    pais: pais,
    salario: double.parse(salario)
  );

  imprimir(usuario);

}

