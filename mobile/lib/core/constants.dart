import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  static const String appName = 'ProjectKin';
  static const String appVersion = '1.0.0';
}

class RouteConstants {
  static const String home = '/';
  static const String login = '/login';
  static const String profile = '/profile';
}

class ApiConstants {
  static String get baseUrl => dotenv.env['API_BASE_URL'] ?? 'http://localhost:54321';
}
