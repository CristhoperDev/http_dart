import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:paquetes/classes/reqres_respuesta.dart';
import 'package:paquetes/paquetes.dart' as paquetes;

main(List<String> arguments) {
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
