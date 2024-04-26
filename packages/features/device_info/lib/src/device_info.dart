import 'package:device_info/src/devices.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// devices info
///
/// * example
///
/// ```dart
/// Future<void> hoge() async {
///   final devices = await getDevices();
///   switch (devices) {
///     case AndroidDevices(:final deviceInfo):
///       print(deviceInfo);
///     case IosDevices(:final deviceInfo):
///       print(deviceInfo);
///   }
/// }
/// ```
///
class DevicesInfo {
  Future<Devices> getDevices() async {
    final deviceInfoPlugin = DeviceInfoPlugin();

    try {
      return switch (defaultTargetPlatform) {
        TargetPlatform.android =>
          AndroidDevices(await deviceInfoPlugin.androidInfo),
        TargetPlatform.iOS => IosDevices(await deviceInfoPlugin.iosInfo),
        _ => throw Exception(),
      };
    } on PlatformException {
      throw Exception('Failed to get platform version');
    }
  }
}
