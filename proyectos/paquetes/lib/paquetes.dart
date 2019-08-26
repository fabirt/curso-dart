import 'package:http/http.dart' as http;

import 'package:paquetes/classes/country.dart';
import 'package:paquetes/classes/reqres_response.dart';

void getReqresResponse() {
  final url = 'https://reqres.in/api/users?page=2';
  http.get(url).then((res) {
    // final body = jsonDecode(res.body);
    // print('page: ${ body['page'] }');
    // print('per_page: ${ body['per_page'] }');
    // print('id 3: ${ body['data'][2]['id'] }');

    final reqresResponse = reqresResponseFromJson(res.body);
    print('page: ${reqresResponse.page}');
    print('per_page: ${reqresResponse.perPage}');
    print('id del 3 elem: ${reqresResponse.data[2].id}');
  });
}

void getCountry() async {
  try {

    final url = 'https://restcountries.eu/rest/v2/alpha/col';

    final res = await http.get(url);

    final country = countryFromJson(res.body);

    printDecorator();
    printData('País', country.name.toString());
    printData('Población', country.population.toString());
    printData('Fronteras', '');
    country.borders.forEach((value) {
      print('  ${capitalize(value)}');
    });
    printData('Lenguajes', country.languages[0].nativeName);
    printData('Latitud', country.latlng.first);
    printData('Longitud', country.latlng.last);
    printData('Moneda', country.currencies.first.name);
    printData('Bandera', country.flag);
    printDecorator();
    
  } catch (e) {
    print('Something went wrong: ');
    print(e);
  }
}

void printDecorator() => print('===========================');

void printData(label, data) => print('$label: $data');

String capitalize(String string) {
  final upperCaseLetter = string[0].toUpperCase();
  final lowerCaseSubstring = string.substring(1, string.length).toLowerCase();
  return upperCaseLetter + lowerCaseSubstring;
}
