import 'dart:developer' as developer;

class AppLogger {
  static void info(String message, {String? tag}) {
    developer.log(message, name: tag ?? 'INFO');
  }

  static void error(String message, {dynamic error, StackTrace? stackTrace, String? tag}) {
    developer.log(message, name: tag ?? 'ERROR', error: error, stackTrace: stackTrace);
  }

  static void debug(String message, {String? tag}) {
    developer.log(message, name: tag ?? 'DEBUG');
  }
}
