import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Notifier {
  static void showErrorSnackBar(String error) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.showSnackbar(
        GetSnackBar(
          backgroundColor: Colors.red,
          dismissDirection: DismissDirection.down,
          duration: const Duration(seconds: 5),
          message: error,
        ),
      );
    });

    //   );)
    // ScaffoldMessenger.of(context)
    //   ..hideCurrentSnackBar()
    //   ..showSnackBar(
    //     SnackBar(
    //       dismissDirection: DismissDirection.down,
    //       duration: const Duration(seconds: 5),
    //       backgroundColor: Colors.red,
    //       content: Text(error),
    //     ),
    //   );
  }
}
