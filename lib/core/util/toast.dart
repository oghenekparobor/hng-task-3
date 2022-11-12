import 'package:oktoast/oktoast.dart';

import '../failures/failure.dart';

class MyToast {
  ToastFuture toast(dynamic l) {
    if (l is Failure) {
      return showToast(FailureToString.mapFailureToMessage(l));
    } else {
      return showToast(l);
    }
  }
}
