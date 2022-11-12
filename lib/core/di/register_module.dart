import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  InternetConnectionChecker get icc => InternetConnectionChecker();

  @lazySingleton
  Dio get dio => Dio(BaseOptions(connectTimeout: 5000, receiveTimeout: 3000));
}
