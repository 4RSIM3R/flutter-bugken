import 'dart:convert';

Report welcomeFromJson(String str) => Report.fromJson(json.decode(str));

String reportToJson(Report data) => json.encode(data.toJson());

class Report {
  Report({
    required this.message,
    required this.log,
  });

  String message;
  Log log;

  factory Report.fromJson(Map<String, dynamic> json) => Report(
    message: json["message"],
    log: Log.fromJson(json["log"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "log": log.toJson(),
  };
}

class Log {
  Log({
    required this.message,
    required this.line,
    required this.file,
    required this.logClass,
    required this.host,
    required this.environment,
  });

  String message;
  String line;
  String file;
  String logClass;
  String host;
  String environment;

  factory Log.fromJson(Map<String, dynamic> json) => Log(
    message: json["message"],
    line: json["line"],
    file: json["file"],
    logClass: json["class"],
    host: json["host"],
    environment: json["environment"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "line": line,
    "file": file,
    "class": logClass,
    "host": host,
    "environment": environment,
  };
}
