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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              // const Text(
              //   '版本号需要与patch号相同',
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.w400,
              //     color: Colors.red,
              //   ),
              // ),
              // const Text(
              //   'iOS 测试',
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.w600,
              //     color: Colors.green,
              //   ),
              // ),
              // const Text(
              //   'test 单独推安卓、iOS \n iOS2 \n Android',
              //   style: TextStyle(
              //     fontSize: 24,
              //     fontWeight: FontWeight.w600,
              //     color: Colors.blue,
              //   ),
              // ),
              Obx(() => Text(
                    controller.versionInfo.value,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange,
                    ),
                  )),
              const SizedBox(height: 20),
              Obx(() => Text(
                    controller.curPatchNum.value,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange,
                    ),
                  )),
              const SizedBox(height: 20),

              Obx(() => Text(
                    controller.updateAvailable.value,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                    ),
                  )),
              const SizedBox(height: 20),

              Obx(() => Text(
                    controller.shorebirdStatus.value,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
                  )),
              const SizedBox(height: 20),

              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  child: const Text(
                    'jump 2 test page',
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
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  child: const Text(
                    'checkForUpdates',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                    ),
                  ),
                  onPressed: () {
                    controller.checkForUpdates();
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
