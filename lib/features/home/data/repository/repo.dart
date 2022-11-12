import 'package:hng_task_3/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:hng_task_3/core/network/impl.dart';
import 'package:hng_task_3/features/home/data/datasource/remote/remote.dart';
import 'package:hng_task_3/features/home/domain/repository/repo.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl({
    required this.formatter,
    required this.remoteDS,
  });

  final ImplFormatter formatter;
  final RemoteDS remoteDS;

  @override
  Future<Either<Failure, List>> countries() async {
    var res = await formatter.format(() async {
      return await remoteDS.get();
    });

    return res.fold((l) => Left(l), (r) {
      return Right(r);
    });
  }
}
