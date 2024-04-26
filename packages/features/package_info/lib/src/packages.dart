import 'package:package_info_plus/package_info_plus.dart';

class Packages {
  static Future<String> get appName async {
    final info = await PackageInfo.fromPlatform();
    return info.appName;
  }

  static Future<String> get packageName async {
    final info = await PackageInfo.fromPlatform();
    return info.packageName;
  }

  static Future<String> get version async {
    final info = await PackageInfo.fromPlatform();
    return info.version;
  }

  static Future<String> get buildNumber async {
    final info = await PackageInfo.fromPlatform();
    return info.buildNumber;
  }

  static Future<String> get installerStore async {
    final info = await PackageInfo.fromPlatform();
    return info.installerStore ?? '';
  }

  static Future<String> get buildSignature async {
    final info = await PackageInfo.fromPlatform();
    return info.buildSignature;
  }

  static Future<Map<String, dynamic>> get data async {
    final info = await PackageInfo.fromPlatform();
    return info.data;
  }
}
