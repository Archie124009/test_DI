import 'package:injectable/injectable.dart';

@singleton
class LoggingService {
  void log(String message) {
    print("Log: $message");
  }
}
