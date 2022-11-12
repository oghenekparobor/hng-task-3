abstract class Failure {}

class ServerException extends Failure {}

class TimeOutError extends Failure {}

class SomethingWentWrong extends Failure {
  SomethingWentWrong({
    required this.message,
    this.data,
  });

  final String message;
  final Map<String, dynamic>? data;
}

class FailureToString {
  static String mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerException:
        return 'Please check your internet connection and try again.';
      case TimeOutError:
        return 'Connection has timed out.';
      case SomethingWentWrong:
        return (failure as SomethingWentWrong).message;
      default:
        return (failure as SomethingWentWrong).message;
    }
  }
}
