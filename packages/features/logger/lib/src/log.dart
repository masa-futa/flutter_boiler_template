import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

final class Log {
  Log();

  static final _logger = _EssLogger();

  /// デバッグログ
  ///
  /// * properties
  ///
  /// - [message] デバッグに必要な情報を記述
  /// - [supplement] 補足情報。key / valueを指定すること
  ///
  /// ** example
  ///
  /// ```dart
  /// Log.d('tapped xxx button', {'url' : 'https://xxx.xxx'});
  /// ```
  ///
  /// *** supplement
  ///
  /// メソッド内ではLogger.vを使用している
  /// Logger.dの場合、printEmojisが毛虫表示となってしまうため、あえてv()を使用している。
  /// printEmojisをfalseにするとerrorログとの見分けがつかなくなるため、あえてprintEmojisをtrueとしている
  ///
  static void d(String message, [Map<String, String>? supplement]) {
    _logger.verbose(message, supplement);
  }

  /// エラー時ログ
  ///
  /// * properties
  ///
  /// - [message] エラーに関する情報を記述
  /// - [supplement] 補足情報。key / valueを指定すること
  /// - [error] throwされたエラー情報を記述
  /// - [stackTrace] throwされたエラーのStackTraceを記述
  ///
  /// ** example
  ///
  /// ```dart
  /// Log.e('xxx api error', {'param' : 'xxx'}, e, e.stackTrace);
  /// ```
  ///
  static void e(
    String message, [
    Map<String, String>? supplement,
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}

/// Logger拡張クラス
final class _EssLogger extends Logger {
  _EssLogger()
      : super(
          level: kReleaseMode ? Level.off : Level.trace,
          printer: PrettyPrinter(methodCount: 8, printTime: true),
        );

  void verbose(dynamic message, [Map<String, String>? supplement]) {
    final day = DateFormat.yMEd().format(DateTime.now());
    final formattedMessage = <String, dynamic>{
      'day': day,
      'message': message,
      if (supplement != null) ...supplement,
    };
    t(formattedMessage);
  }

  void error(
    dynamic message, [
    Map<String, String>? supplement,
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    final day = DateFormat.yMEd().format(DateTime.now());
    final formattedMessage = <String, dynamic>{
      'day': day,
      'message': message,
      if (supplement != null) ...supplement,
    };
    e(formattedMessage, error: error, stackTrace: stackTrace);
  }
}
