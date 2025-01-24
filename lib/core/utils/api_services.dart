import 'package:dio/dio.dart';

class Apiservices {
  final String BasURL = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  Apiservices(
    this._dio,
  );
  Future<Map<String, dynamic>> get(endpoint) async {
    Response respons = await _dio.get('$BasURL$endpoint');
    return respons.data;
  }
}
