main(List<String> args) {
  // saludar('Hola', 'Fernando');

  // saludar2('Fernando', 'Hello', 3);

  saludar3(veces: 5, mensaje: 'Hola', nombre: 'Fernando');
}

void saludar(String mensaje, [String nombre = '<nombre>']) {
  print('$mensaje $nombre');
}

void saludar2(String nombre, String mensaje, int veces) {
  for (int i = 0; i < veces; i++) {
    print('$mensaje $nombre');
  }
}

void saludar3({String nombre, String mensaje, int veces}) {
  for (var i = 0; i < veces; i++) {
    print('$mensaje $nombre');
  }
}
