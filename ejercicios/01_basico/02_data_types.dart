main() {
  // ================= Números =================
  int a = 10;
  double b = 5.5;
  int c;

  int x = 10, y = 20, z = 30;

  int _a;
  double $b = 45.55;

  // ================= Strings =================

  String nombre = 'Tony';
  String nombre2 = "Tony";
  String nombre3 = 'O\'Connor'; // O'Connor

  String multilinea = '''
        Hola Mundo
        ¿Cómo están?
        O'Connor
        ''';

  // ================= Booleanos =================

  bool activo = true;
  bool corriendo;
  activo = false;
  activo = !activo;

  // ================= Listas - arreglos =================

  List<String> personajes = ['Superman', 'Batman'];
  List<String> personajes2 = new List();

  personajes2.add('Superman');
  personajes2.add('Batman');

  personajes2.addAll(['Robin', 'Spiderman']);

  personajes2..add('Aquaman')..add('Ironman');

  List<String> villanos = new List(3);
  //   villanos.addAll(['Lex', 'Red skull', 'Doom']);
  villanos[0] = 'Lex';
  villanos[1] = 'Red skull';
  villanos[2] = 'Doom';

  // ================= Sets =================
  Set<String> villanos2 = {'Lex', 'Red skull', 'Doom'};
  villanos2.add('Flash reverso');

  // ================= Mapas =================
	Map<Object, String> ironman = {
		'nombre': 'Tony Stark',
		'poder'	: 'Inteligencia',
		'edad'	:	'60',
		10			: "Nivel de energia"
	};

	Map<String, dynamic> capitan = new Map();

	capitan.addAll({ 'nombre': 'Steve', 'poder': 'No morir' });

}
