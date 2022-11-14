import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/material.dart';
import 'package:hng_task_3/core/usecases/usecases.dart';
import 'package:hng_task_3/core/util/loader.dart';
import 'package:hng_task_3/features/home/data/repository/repo.dart';
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

  List<Map<String, List>>? _countries = [];
  final List _all = [];

  List<Map<String, List>>? get countries => _countries;

  Future<void> getCountries() async {
    _countries = [];
    _all.clear();

    AppLoader().show();

    var data = await countriesUsecase.call(const NoParams());

    data.fold(
      (l) {
        MyToast().toast(l);

        _countries = null;
      },
      (r) {
        _countries = r;

        for (var element in _countries!) {
          for (var element in element.entries.first.value) {
            _all.add(element);
          }
        }

        notifyListeners();

        Navigator.of(navKey.currentContext!).pop();
      },
    );
  }

  void searchCounrttry(String value) {
    var d = [..._all];

    _countries!.clear();

    d.retainWhere(
        (e) => e['name']['common'].toString().toLowerCase().contains(value));

    _countries = grouping(d);

    notifyListeners();
  }
}
