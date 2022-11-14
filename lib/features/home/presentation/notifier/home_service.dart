import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/material.dart';
import 'package:hng_task_3/core/usecases/usecases.dart';
import 'package:hng_task_3/core/util/loader.dart';
import 'package:hng_task_3/features/home/data/repository/repo.dart';
import 'package:hng_task_3/features/home/domain/usecases/countries.dart';
import 'package:hng_task_3/main.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/util/toast.dart';

@injectable
class HomeService with ChangeNotifier {
  HomeService({
    required this.countriesUsecase,
  });

  final CountriesUsecase countriesUsecase;

  List<Map<String, List>>? _countries = [];
  final List _all = [];
  final List continents = [];
  final List timezones = [];

  final List t = [];
  final List c = [];

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

        groupingContinent(_all).forEach((element) {
          continents.add(element.entries.first.key);
        });

        groupingTimezone(_all).forEach((element) {
          timezones.add(element.entries.first.key);
        });

        notifyListeners();

        Navigator.of(navKey.currentContext!).pop();
      },
    );
  }

  void searchCounrttry(String value) {
    var d = [..._all];

    _countries!.clear();

    d.retainWhere(
      (e) => e['name']['common'].toString().toLowerCase().contains(value),
    );

    _countries = grouping(d);

    notifyListeners();
  }

  void arC(v) {
    if (c.any((e) => e == v)) {
      c.remove(v);
    } else {
      c.add(v);
    }

    notifyListeners();
  }

  bool checkC(v) {
    return c.any((e) => e == v);
  }

  void arT(v) {
    if (t.any((e) => e == v)) {
      t.remove(v);
    } else {
      t.add(v);
    }

    notifyListeners();
  }

  bool checkT(v) {
    return t.any((e) => e == v);
  }

  void reset() {
    t.clear();
    c.clear();

    _countries = grouping(_all);

    notifyListeners();
  }

  void showResult() {
    var d = [];

    if (_all.any((e) => (c.contains((e['continents'] as List).first)))) {
      print(true);
      d.add(_all
          .firstWhere((e) => (c.contains((e['continents'] as List).first))));
    } else {
      print(false);
    }
    Logger().d(d);

    notifyListeners();
  }
}
