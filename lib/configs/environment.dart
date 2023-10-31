enum EnvironmentType { dev, prod }

abstract class EnvironmentBase {
  String get host;

  Duration get apiTimeout => const Duration(seconds: 60);
}

class _Product extends EnvironmentBase {
  @override
  String get host => "";
}

class _Dev extends EnvironmentBase {
  @override
  String get host => "https://api.cachcach.org";
}

class Environment {
  static EnvironmentBase _environment = _Dev();

  static String get host => _environment.host;

  static Duration get apiTimeout => _environment.apiTimeout;

  static void config(EnvironmentType type) {
    switch (type) {
      case EnvironmentType.dev:
        _environment = _Dev();
        break;
      case EnvironmentType.prod:
        _environment = _Product();
        break;
    }
  }
}
