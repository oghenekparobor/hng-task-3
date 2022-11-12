import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hng_task_3/core/constants-n-assets/assets.dart';

import '../../../../config/route/route.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), _init);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(kLogo),
      ),
    );
  }

  FutureOr _init() {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.home,
      (route) => false,
    );
  }
}
