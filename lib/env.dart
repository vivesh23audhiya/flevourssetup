import 'package:flutter/material.dart';

enum Environment { dev, prod, staging }

abstract class AppEnvironment {
  static late String baseApiUrl;
  static late String title;
  static late Color primaryColors;
  static late Environment _environment;

  static Environment get environment => _environment;

  static setUpEnv(Environment env) {
    _environment = env;
    switch (env) {
      case Environment.dev:
        {
          baseApiUrl = "https://test-url-dev.com";
          title = "Flavour development";
          primaryColors = Colors.blue;
          break;
        }
      case Environment.prod:
        {
          baseApiUrl = "https://test-url-prod.com";
          title = "Flavour production";
          primaryColors = Colors.redAccent;
          break;
        }
      case Environment.staging:
        {
          baseApiUrl = "https://test-url--staging.com";
          title = "Flavour staging";
          primaryColors = Colors.green;
          break;
        }
    }
  }
}
