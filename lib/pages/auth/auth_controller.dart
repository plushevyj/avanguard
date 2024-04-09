import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../module/account/model/player_account.dart';
import '../../module/auth/bloc/auth_bloc.dart';

class AuthController extends GetxController {
  late final AuthBloc bloc;
  late final TextEditingController email = TextEditingController();
  late final TextEditingController password = TextEditingController();

  var obscure = true.obs;
  var emailErrorText = Rxn<String>();
  var passwordErrorText = Rxn<String>();

  final account = Rxn<PlayerAccount>();

  void toggleObscure() => obscure.value = !obscure.value;

  @override
  void onInit() {
    bloc = BlocProvider.of<AuthBloc>(Get.context!);
    super.onInit();
  }

  void logIn() {
    if (_isValid()) {
      emailErrorText.value = null;
      passwordErrorText.value = null;
      bloc.add(AuthLogIn(email: email.text, password: password.text));
    }
  }

  bool _isValid() => _isValidEmail() && _isValidPass();

  bool _isValidEmail() {
    if (email.text.isEmpty) {
      emailErrorText.value = 'Обязательное поле';
      return false;
    }
    return true;
  }

  bool _isValidPass() {
    if (password.text.isEmpty) {
      passwordErrorText.value = 'Обязательное поле';
      return false;
    }
    return true;
  }
}
