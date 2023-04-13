enum LogType { verbose, debug, info, warning, error }

final levelPrefixes = {
  LogType.verbose: 'V:',
  LogType.debug: 'D:',
  LogType.info: 'I:',
  LogType.warning: 'W:',
  LogType.error: 'E:',
};