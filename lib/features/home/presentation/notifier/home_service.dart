import 'package:flutter/material.dart';
import 'package:hng_task_3/core/usecases/usecases.dart';
import 'package:hng_task_3/core/util/loader.dart';
import 'package:hng_task_3/features/home/domain/usecases/countries.dart';
import 'package:hng_task_3/main.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/util/toast.dart';

@injectable
class HomeService with ChangeNotifier {
  HomeService({
    required this.countriesUsecase,
  });

  final CountriesUsecase countriesUsecase;

  List? _countries = [];

  List? get countries => _countries;

  Future<void> getCountries() async {
    _countries = [];

    AppLoader().show();

    var data = await countriesUsecase.call(const NoParams());

    data.fold(
      (l) {
        MyToast().toast(l);

        _countries = null;
      },
      (r) {
        _countries = r;

        notifyListeners();

        Navigator.of(navKey.currentContext!).pop();
      },
    );
  }
}
