import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_shorebird/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              '版本号需要与patch号相同',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.red,
              ),
            ),
            const Text(
              'iOS 测试',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            Obx(() => Text(
                  controller.versionInfo.value,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.orange,
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        child: const Text(
          '跳转',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF000000),
          ),
        ),
        onPressed: () {
          Get.toNamed(Routes.TEST);
        },
      ),
    );
  }
}
