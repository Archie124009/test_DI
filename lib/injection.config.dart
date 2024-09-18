// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'services/api_service.dart' as _i3;
import 'services/logging_service.dart' as _i4;
import 'services/settings_service.dart' as _i5;
import 'services/user_service.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
  final settingsServiceModule = _$SettingsServiceModule();
  gh.lazySingleton<_i3.ApiService>(() => _i3.ApiService());
  gh.singleton<_i4.LoggingService>(_i4.LoggingService());
  gh.singleton<_i5.SettingsService>(settingsServiceModule.settingsService);
  gh.factory<_i6.UserService>(() => _i6.UserService());
  return get;
}

class _$SettingsServiceModule extends _i5.SettingsServiceModule {}
