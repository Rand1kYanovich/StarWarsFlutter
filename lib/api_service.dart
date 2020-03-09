import 'dart:convert';
import 'dart:io';

import 'package:firstflutterapp/entity/card.dart';
import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: '/api/people')
abstract class ApiService extends ChopperService {
  static ApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://swapi.co',
        services: [
          _$ApiService(),
        ],
        interceptors: [HttpLoggingInterceptor()],
        converter: JsonConverter());

    return _$ApiService(client);
  }

  @Get(path: '/?page={page}')
  Future<Response> getCards(@Path('page') int page);

  @Get(path: '/?page=2&search={name}')
  Future<Response> searchCards(
      @Path('page') int page, @Path('name') String name);
}
