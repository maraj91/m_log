library m_log;
import 'package:flutter/material.dart';
import 'logger/log_type.dart';
import 'logger/m_print.dart';

class MLog {
  static bool isInDebugMode = true;
  /// print verbose level log
  static v({String? tag, @required dynamic content}) {
    _log(LogType.verbose, tag ?? "Verbose", content);
  }

  /// print debug level log
  static d({String? tag, @required dynamic content}) {
    _log(LogType.debug, tag ?? "Debug", content);
  }

  /// print info level log
  static i({String? tag, @required dynamic content}) {
    _log(LogType.info, tag ?? "Info", content);
  }

  /// print warning level log
  static w({String? tag, @required dynamic content}) {
    _log(LogType.warning, tag ?? "Warning", content);
  }

  /// print error level log
  static e({String? tag, @required dynamic content, Error? error}) {
    if(error != null) {
      _log(LogType.error, tag ?? "Error", "$content, ${error.stackTrace}");
    } else {
      _log(LogType.error, tag ?? "Error", "$content");
    }
  }

  static void _log(LogType level, String tag, content) {
    String message = _format(level, tag, content);
    if(isInDebugMode) {
      switch(level) {
        case LogType.verbose:
          MPrint.printVerbose(message);
          break;
        case LogType.debug:
          MPrint.printDebug(message);
          break;
        case LogType.info:
          MPrint.printInfo(message);
          break;
        case LogType.warning:
          MPrint.printWarning(message);
          break;
        case LogType.error:
          MPrint.printError(message);
          break;
      }
    }
  }

  /// format print log: time level tag message
  static String _format(LogType level, String tag, dynamic content) {
    var timeStr = DateTime.now().toIso8601String();
    return '$timeStr ${levelPrefixes[level]} $tag $content\n';
  }
}