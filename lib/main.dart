import 'package:flutter/material.dart';
import 'injection.dart';
import 'package:injectable/injectable.dart';
import 'services/api_service.dart';
import 'services/logging_service.dart';
import 'services/settings_service.dart';
import 'services/user_service.dart';

void main() {
  configureDependencies(); // Настройка зависимостей
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEST DI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ApiService _apiService = getIt<ApiService>();
  final LoggingService _loggingService = getIt<LoggingService>();
  final SettingsService _settingsService = getIt<SettingsService>();
  final UserService _userService = getIt<UserService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEST DI"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_apiService.fetchData()),
            Text(_userService.getUser()),
            Text(_settingsService.getSettings()),
            ElevatedButton(
              onPressed: () {
                _loggingService.log("Button pressed!");
              },
              child: Text("Log"),
            ),
          ],
        ),
      ),
    );
  }
}
