import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  String fetchData() {
    return "Fetched data from API";
  }
}
