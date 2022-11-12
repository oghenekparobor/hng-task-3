import 'package:flutter/material.dart';

import '../../main.dart';

class AppLoader {
  show() {
    showDialog(
      context: navKey.currentContext!,
      barrierDismissible: false,
      barrierColor: Colors.white70,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
