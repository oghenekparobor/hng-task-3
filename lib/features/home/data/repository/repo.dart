import 'package:collection/collection.dart';
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
  Future<Either<Failure, List<Map<String, List>>>> countries() async {
    var res = await formatter.format(() async {
      return await remoteDS.get();
    });

    return res.fold((l) => Left(l), (r) {
      return Right(grouping(r));
    });
  }
}

List<Map<String, List>> grouping(List l) {
  var list = <Map<String, List>>[];

  var group = groupBy(
    l,
    (dynamic p0) => p0['name']['common'].split('').first,
  );

  group.forEach((key, value) {
    value.sort(((a, b) => a['name']['common'].compareTo(b['name']['common'])));

    list.add({key: value});
  });

  list.sort(
    (a, b) {
      return a.entries.first.key.compareTo(b.entries.first.key);
    },
  );

  return list;
}
