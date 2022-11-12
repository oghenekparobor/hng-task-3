import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NetworkRequester {
  NetworkRequester({
    required this.dio,
  });

  final Dio dio;

  Future<dynamic> get(
    String endpoint, {
    bool isProtected = true,
    bool isFormData = false,
  }) async {
    var response = await dio.get(
      '${dotenv.env['BASE_URL']}$endpoint',
      options: Options(headers: {
        'Content-Type': isFormData ? 'multipart/form-data' : 'application/json',
      }),
    );

    return response.data;
  }

  Future<dynamic> post(
    String endpoint, {
    bool isProtected = true,
    bool isFormData = false,
    required Map<String, dynamic> data,
  }) async {
    var response = await dio.post(
      '${dotenv.env['BASE_URL']}$endpoint',
      data: isFormData ? FormData.fromMap(data) : data,
      options: Options(headers: {
        'Content-Type': isFormData ? 'multipart/form-data' : 'application/json',
      }),
    );

    return response.data;
  }

  Future<dynamic> patch(
    String endpoint, {
    bool isProtected = true,
    bool isFormData = false,
    required Map<String, dynamic> data,
  }) async {
    var response = await dio.patch(
      '${dotenv.env['BASE_URL']}$endpoint',
      data: isFormData ? FormData.fromMap(data) : data,
      options: Options(headers: {
        'Content-Type': isFormData ? 'multipart/form-data' : 'application/json',
      }),
    );

    return response.data;
  }

  Future<dynamic> delete(
    String endpoint, {
    bool isProtected = true,
    bool isFormData = false,
  }) async {
    var response = await dio.delete(
      '${dotenv.env['BASE_URL']}$endpoint',
      options: Options(headers: {
        'Content-Type': isFormData ? 'multipart/form-data' : 'application/json',
      }),
    );

    return response.data;
  }
}
