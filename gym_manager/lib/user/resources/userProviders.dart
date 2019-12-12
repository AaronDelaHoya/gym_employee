import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:gym_manager/user/model/User.dart';
import 'package:http/http.dart' show Client;

class UserProviders {
  Client client = Client();

  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization': '<Your token>'
  };



  final _url = 'https://gymmanager.joseangelpacheco9729.now.sh/api';
  Future<List<User>> fetchTodoList() async {
    print('panggil data');

    // Peticion GET
    final response = await client.get(_url);
    if (response.statusCode == 200) {
      // print(response.body.length);
      return compute(userFromJson, response.body);
      // return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to Load');
    }
  }

  // Peticion POST
  Future createUser(name, email, password) async {
    var tyson = {'name': name, 'email' : email, 'password': password, 'phone':"8718971012"};
    String jsonTyson = jsonEncode(tyson);
    print(jsonTyson);
    final response = await client.post("${_url}/auth/sign-up'", headers: {"Content-Type":"application/json"},body: jsonTyson);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      return response;
    } else {
      throw Exception('Failed to add data');
    }
  }

  // Peticion PUT
  Future updateTodo(ids) async {
    // print('$_url$ids/update');
    final response = await client.put("$_url$ids/update", body: {'done': "true"});
    if (response.statusCode == 200) {
      print('berhasil di update');
      return response;
    } else {
      throw Exception('Failed to update data');
    }
  }

  //var tysonTwo = {'email' : email, 'password': password, 'apiKeyToken':"9d05afe78b0c0eac67a5c56cfd4b154fff09f387a57c2bff838233fc6946a923"};
  Future signIn(email, password) async {
    var tyson = {'email' : email, 'password': password, 'apiKeyToken':"9d05afe78b0c0eac67a5c56cfd4b154fff09f387a57c2bff838233fc6946a923" };
    String jsonTyson = jsonEncode(tyson);
    print(jsonTyson);
    final response = await client.post("${_url}/auth/sign-in", headers: {"Content-Type":"application/json"},body: jsonTyson);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      return response;
    } else {
      throw Exception('Failed to add data');
    }
  }

}