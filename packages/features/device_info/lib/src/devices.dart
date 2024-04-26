import 'package:device_info_plus/device_info_plus.dart';

sealed class Devices<A extends AndroidDeviceInfo, I extends IosDeviceInfo> {
  Devices();
}

final class AndroidDevices<A extends AndroidDeviceInfo, I extends IosDeviceInfo>
    extends Devices<A, I> {
  AndroidDevices(this.deviceInfo);

  final A deviceInfo;
}

final class IosDevices<A extends AndroidDeviceInfo, I extends IosDeviceInfo>
    extends Devices<A, I> {
  IosDevices(this.deviceInfo);

  final I deviceInfo;
}
