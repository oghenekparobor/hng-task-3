import 'package:dartz/dartz.dart';
import 'package:hng_task_3/core/failures/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List <Map<String, List>>>> countries();
}
