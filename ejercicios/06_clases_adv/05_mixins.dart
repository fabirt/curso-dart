
mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}
mixin Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

abstract class Astro with Logger {
  String nombre;

  Astro() {
    imprimir('-- init del astro --');
  }

  void existo() {
    imprimir('-- soy un ser celestial y existo --');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  String nombre;

  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }
}

main() {
  final logger = new Asteroide('Andromeda');
}
