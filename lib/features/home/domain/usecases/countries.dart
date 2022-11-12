import 'package:dartz/dartz.dart';
import 'package:hng_task_3/core/usecases/usecases.dart';
import 'package:hng_task_3/features/home/domain/repository/repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failure.dart';

@lazySingleton
class CountriesUsecase extends Usecase<void, NoParams> {
  CountriesUsecase({
    required this.repo,
  });

  final HomeRepo repo;

  @override
  Future<Either<Failure, List<dynamic>>> call(NoParams params) async =>
      await repo.countries();
}
