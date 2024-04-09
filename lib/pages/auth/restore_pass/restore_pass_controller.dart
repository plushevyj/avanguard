import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'restore_pass_repository.dart';

class RestorePassController extends GetxController {
  late final TextEditingController email = TextEditingController();
  var emailErrorText = Rxn<String>();
  var isSent = false.obs;
  static const repository = RestorePassRepository();

  Future<void> restorePass() async {
    if (_isValidEmail()) {
      emailErrorText.value = null;
      final res = await repository.sendMail(email.text);
      res.status == 'ok' && res.message == 'Письмо отправлено'
          ? isSent.value = true
          : emailErrorText.value = 'Статус отправки почты: ${res.status}'
              '\nСообщение: ${res.message}';
    }
  }

  bool _isValidEmail() {
    if (email.text.isEmpty) {
      emailErrorText.value = 'Обязательное поле';
      return false;
    }
    return true;
  }
}
