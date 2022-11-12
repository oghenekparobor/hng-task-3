import 'package:hng_task_3/core/network/dio.dart';
import 'package:injectable/injectable.dart';

abstract class RemoteDS {
  Future get();
}

@LazySingleton(as: RemoteDS)
class RemoteDSImpl extends RemoteDS {
  RemoteDSImpl({
    required this.requester,
  });

  final NetworkRequester requester;

  @override
  Future get() async {
    return await requester.get('/all');
  }
}
