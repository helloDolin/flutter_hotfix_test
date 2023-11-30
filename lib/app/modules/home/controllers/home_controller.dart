import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HomeController extends GetxController {
  RxString versionInfo = ''.obs;

  @override
  void onReady() async {
    super.onReady();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    versionInfo.value = '$appName\n$packageName\n$version\n$buildNumber';
  }
}
