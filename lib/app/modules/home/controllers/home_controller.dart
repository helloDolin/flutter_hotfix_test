import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

class HomeController extends GetxController {
  RxString versionInfo = ''.obs;
  RxString curPatchNum = ''.obs;
  RxString updateAvailable = '是否有新的更新：false'.obs;
  final shorebirdCodePush = ShorebirdCodePush();

  void _getCurPatch() {
    shorebirdCodePush.currentPatchNumber().then(
          (value) => curPatchNum.value = ('current patch number is $value'),
        );
  }

  void _getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    versionInfo.value =
        'app名：$appName\n包名：$packageName\n版本号：$version\nbuild 号：$buildNumber';
  }

  Future<void> checkForUpdates() async {
    // Check whether a patch is available to install.
    final isUpdateAvailable =
        await shorebirdCodePush.isNewPatchAvailableForDownload();
    updateAvailable.value = '是否有新的更新：$isUpdateAvailable';
    if (isUpdateAvailable) {
      // Download the new patch if it's available.
      await shorebirdCodePush.downloadUpdateIfAvailable();
    }
  }

  @override
  void onReady() async {
    super.onReady();
    _getPackageInfo();
    _getCurPatch();
  }
}
