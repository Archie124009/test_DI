import 'package:injectable/injectable.dart';

@module
abstract class SettingsServiceModule {
  @singleton
  SettingsService get settingsService => SettingsService();
}

class SettingsService {
  String getSettings() {
    return "User settings";
  }
}
