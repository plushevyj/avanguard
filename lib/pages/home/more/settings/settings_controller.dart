import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../module/account/model/player_account.dart';
import '../../../auth/auth_controller.dart';
import 'repository/settings_repository.dart';

class SettingsController extends GetxController {
  final account = Rxn<PlayerAccount>();

  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    getAccountData();
  }

  void getAccountData() {
    account.value = Get.find<AuthController>().account.value;
    if (account.value == null) return;
    firstName.text = account.value!.firstName;
    lastName.text = account.value!.lastName;
    phone.text = account.value!.phone ?? '';
    email.text = account.value!.email ?? '';
  }

  String? nameValidator(String? s) {
    if (s == null) return null;
    RegExp regex = RegExp(r'^\p{L}+$', unicode: true);
    if (!regex.hasMatch(s)) {
      return 'Имя должно состоять только из букв';
    }
    return null;
  }

  String? phoneValidator(String? s) {
    if (s == null) return null;
    if (s.length < 17) {
      return 'Номер слишком короткий';
    } else if (s.length > 17) {
      return 'Номер слишком длинный';
    }
    RegExp regex = RegExp(r'^[0-9() -]+$');
    if (!regex.hasMatch(s)) {
      return 'Номер телефона должен состоять из: цифр, пробелов, круглых скобок, тире';
    }
    return null;
  }

  String? emailValidator(String? s) {
    if (s == null) return null;
    RegExp regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(s)) {
      return 'Не соответствует формату почты: x@x.x';
    }
    return null;
  }

  Future<void> logIn() async {
    if (formKey.currentState!.validate()) {
      account.value = await const SettingsRepository().save(
        firstName: firstName.text,
        lastName: lastName.text,
        phone: phone.text,
        email: email.text,
      );
    }
  }
}
