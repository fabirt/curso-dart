
// https://api.dart.dev/stable/2.4.1/index.html

main() {
  double numero = 3.1416;

  double infinito = double.infinity;

  print('Firma: ${ numero.sign } :: $numero');

  print('isFinite: ${ infinito.isFinite } :: $infinito');
  
  print('abs: ${ numero.abs() } :: $numero');
  
  print('abs: ${ numero.ceil() } :: $numero');
  
  print('ceilToDouble: ${ numero.ceilToDouble() } :: $numero');
  
  print('round: ${ numero.round() } :: $numero');
  
  print('round: ${ numero.roundToDouble() } :: $numero');
  
  print('clamp: ${ numero.clamp(4, 6) } :: $numero');

}
