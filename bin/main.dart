import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:paquetes/paquetes.dart' as paquetes;

main(List<String> arguments) {
  final url = "https://reqres.in/api/users?page=2";
  http.get(url).then((res) {

    final body = jsonDecode(res.body);
    print(body);
    print('page: ${body['page']}');
    print('perpage: ${body['page']}');
    print('page: ${body['data'][2]['id']}');
    
  });
}
