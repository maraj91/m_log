import 'package:flutter/foundation.dart';

class MPrint {
  // Black:   \x1B[30m
  // Red:     \x1B[31m
  // Green:   \x1B[32m
  // Yellow:  \x1B[33m
  // Blue:    \x1B[34m
  // Magenta: \x1B[35m
  // Cyan:    \x1B[36m
  // White:   \x1B[37m
  // Reset:   \x1B[0m

  static printVerbose(String message) {
      debugPrint('\x1B[35m$message\x1B[0m');
  }

  static printDebug(String message) {
    debugPrint('\x1B[36m$message\x1B[0m');
  }

  static printInfo(String message) {
      debugPrint('\x1B[32m$message\x1B[0m');
  }
  static printWarning(String message) {
      debugPrint('\x1B[33m$message\x1B[0m');
  }

  static printError(String message) {
    debugPrint('\x1B[31m$message\x1B[0m');
  }
}