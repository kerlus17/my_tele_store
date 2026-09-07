import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tele_store/core/di/injection_container.dart';

class PickImageUtils {
  factory PickImageUtils() {
    return _instance;
  }

  const PickImageUtils._();

  static const PickImageUtils _instance = PickImageUtils._();

  Future<XFile?> pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image != null) {
        return XFile(image.path);
      } else {
        return null;
      }
    } catch (e) {
      final PermissionStatus = await Permission.photos.status;
      if (PermissionStatus.isDenied) {
        _showAlertPermissionsDialog();
      } else {
        debugPrint('image exeption => $e');
      }
    }
  }

  Future<void> _showAlertPermissionsDialog() {
    return showCupertinoDialog(
      context: sl<GlobalKey<NavigatorState>>().currentState!.context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Permissions Denied'),
          content: const Text('Allow access to gallery and photos'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: openAppSettings,
              child: const Text('Settings'),
            ),
          ],
        );
      },
    );
  }
}
