import 'dart:convert';
import 'dart:io';

import 'package:firstflutterapp/entity/card.dart';
import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart';

@ChopperApi(baseUrl: 'https://swapi.co/')
abstract class ApiService extends ChopperService {
  @Get(path: 'api/people/?page={page}')
  Future<PeopleResponse> getCards(@Path('page') int page);

  @Get(path: 'api/people/?page=2&search={name}')
  Future<PeopleResponse> searchCards(
      @Path('page') int page, @Path('name') String name);
}
