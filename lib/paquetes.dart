import 'package:http/http.dart' as http;

import 'package:paquetes/classes/reqres_respuesta.dart';
import 'package:paquetes/classes/pais.dart';

void getReqResp_Service() {
  final url = "https://reqres.in/api/users?page=2";
  http.get(url).then((res) {

    final resReqRes = reqResRespuestaFromJson(res.body);

    // final body = jsonDecode(res.body);
    // print(body);
    print('page: ${resReqRes.page}');
    print('perpage: ${resReqRes.perPage}');
    print('page: ${resReqRes.data[2].id}');
    
  });
}

void getColombia() {
  final url = "https://restcountries.eu/rest/v2/alpha/col";
  http.get(url).then((res) {
    final response = paisFromJson(res.body);
    print('===========================');
    print('Pais: ${response.name}');
    print('Población: ${response.population}');
    print('Fronteras:');
    response.borders.forEach((f) => print('    $f'));
    print('languages: ${response.languages[0].nativeName}');
    print('Latitud: ${response.latlng[0]}');
    print('Longitud: ${response.latlng[1]}');
    print('Moneda: ${response.currencies[0].name}');
    print('Bandera: ${response.flag}');
    print('===========================');
  }).catchError((error) => print(error));
}