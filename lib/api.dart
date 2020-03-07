import 'dart:convert';
import 'dart:io';

import 'package:firstflutterapp/entity/card.dart';
import 'package:http/http.dart' as http;

final String baseApi = "https://swapi.co/";

Future<List<PeopleDto>> getAllCard(int page) async {
  try {
    final response = await http.get(baseApi + "api/people/?page=$page");
    print(response);
    return PeopleResponse.fromJson(jsonDecode(response.body)).results;
  } catch (e, s) {
    print(e);
    return List(0);
  }
}
