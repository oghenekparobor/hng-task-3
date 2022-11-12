// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;

import '../network/dio.dart' as _i6;
import '../network/impl.dart' as _i7;
import '../network/network_info.dart' as _i5;
import 'register_module.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.InternetConnectionChecker>(() => registerModule.icc);
  gh.lazySingleton<_i5.NetworkInfo>(() => _i5.NetworkInfoImpl());
  gh.lazySingleton<_i6.NetworkRequester>(
      () => _i6.NetworkRequester(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i7.ImplFormatter>(
      () => _i7.ImplFormatter(networkInfo: get<_i5.NetworkInfo>()));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
