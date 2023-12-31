import 'package:permission_handler/permission_handler.dart';

class CameraPermissionHelper {
  static Future<bool> get isAccepted async {
    var status = await Permission.camera.status;
    return status.isGranted || status.isLimited;
  }

  static Future<PermissionStatus> request() async {
    return await Permission.camera.request();
  }
}
