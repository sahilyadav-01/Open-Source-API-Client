class AppConfig {
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'https://api.github.com',
  );
  
  static const int connectTimeout = 30000;
  static const int receiveTimeout = 30000;
}
