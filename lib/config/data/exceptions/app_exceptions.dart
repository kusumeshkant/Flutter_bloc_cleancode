class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return "$_message $_prefix";
  }
}

class NoInternateException extends AppExceptions {
  NoInternateException([String? message])
      : super(message, "No Internate connection");
}

class UnAuthorisedException extends AppExceptions {
  UnAuthorisedException([String? message])
      : super(message, "You don't have access to this");
}

class RequestTimeOutException extends AppExceptions {
  RequestTimeOutException([String? message])
      : super(message, "Request time out");
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, "");
}
