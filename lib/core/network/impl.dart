import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../main.dart';
import '../failures/failure.dart';
import 'network_info.dart';

@lazySingleton
class ImplFormatter {
  ImplFormatter({
    required this.networkInfo,
  });

  final NetworkInfo networkInfo;

  Future<Either<Failure, dynamic>> format(Function function) async {
    if (await networkInfo.isConnected()) {
      try {
        return Right(await function.call());
      } on DioError catch (e) {
        Logger().e(e.message);
        Logger().e(e.type);
        Logger().e(e.response);

        Navigator.of(navKey.currentContext!).pop();

        if (e.type == DioErrorType.receiveTimeout) return Left(TimeOutError());
        if (e.type == DioErrorType.connectTimeout) return Left(TimeOutError());

        if (e.response == null || e.response!.data == null) {
          return Left(SomethingWentWrong(
            message: 'Something went wrong. Please check your internet',
          ));
        }

        if (e.response!.statusCode == 400) {
          return Left(
            SomethingWentWrong(
              message: 'Oops!',
              data: e.response!.data,
            ),
          );
        }

        return Left(SomethingWentWrong(message: e.response!.data));
      } catch (e) {
        Navigator.of(navKey.currentContext!).pop();

        Logger().e(e.toString());
        return Left(SomethingWentWrong(message: e.toString()));
      }
    } else {
      Navigator.of(navKey.currentContext!).pop();

      return Left(ServerException());
    }
  }
}
