class Logger {
  static LogMode _logMode = _logMode.debug;

  static void init(LogMode mode){
    Logger._logMode = mode;
  }

  static void log(dynamic data, {StackTrace? StackTrace}) {
    if (_logMode == Logger._logMode.debug) {
      print("Error: $data$StackTrace");
    }
  }
}

enum LogMode {debug, live }