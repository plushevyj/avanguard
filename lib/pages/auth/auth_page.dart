import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/http/http.dart';
import '../home/more/settings/widgets/custom_switch.dart';
import '../home/primary/widgets/check_dev_widget.dart';
import 'auth_controller.dart';
import '../../customization/pics.dart';
import '../../customization/std_colors.dart';
import 'widgets/email_text_field.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  static const route = '/auth';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController(), permanent: true);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70),
              const CheckDevWidget(),
              // if (kDebugMode) const StageProdSwitch(),
              SvgPicture.asset(Pics.logoAndTitle),
              const SizedBox(height: 70),
              EmailTextField(controller),
              const SizedBox(height: 20),
              _PasswordTextField(controller),
              const SizedBox(height: 60),
              _LogInButton(authController: controller),
              const SizedBox(height: 25),
              // TextButton(
              //   style: TextButton.styleFrom(foregroundColor: Grey.g54),
              //   onPressed: () => Get.to(() => const RestorePassPage()),
              //   child: const Text('Не помню пароль'),
              // ),
            ],
          ),
        ),
      ),
      bottomSheet: const _Contacts(),
    );
  }
}

class StageProdSwitch extends StatefulWidget {
  const StageProdSwitch({Key? key}) : super(key: key);

  @override
  State<StageProdSwitch> createState() => _StageProdSwitchState();
}

class _StageProdSwitchState extends State<StageProdSwitch> {
  late bool isOn;

  @override
  void initState() {
    super.initState();
    isOn = Http.baseUrl == dotenv.env['STAGE'];
  }

  // todo fix this
  void _toggle(bool v) {
    // Http.baseUrl = v ? dotenv.env['PROD'] : dotenv.env['STAGE'];
    print(
      '${("-" * 100).toString()}\n'
          '${Http.baseUrl}\n'
          '${("-" * 100).toString()}\n',
    );
    setState(() => isOn = v);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Indents.y),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Stage?'),
          const SizedBox(width: Indents.x),
          CustomSwitch(isOn: isOn, onToggle: _toggle),
        ],
      ),
    );
  }
}


class _PasswordTextField extends StatelessWidget {
  final AuthController controller;

  const _PasswordTextField(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: controller.password,
        obscureText: controller.obscure.value,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: controller.toggleObscure,
            icon: const Icon(Icons.visibility_off_sharp, color: Grey.g38),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: controller.passwordErrorText.value == null
                  ? Colors.black.withOpacity(.23)
                  : StdColors.primary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: controller.passwordErrorText.value == null
                  ? Colors.black.withOpacity(.23)
                  : StdColors.primary,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: StdColors.primary),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: StdColors.primary),
          ),
          labelStyle: TextStyle(
            color: controller.passwordErrorText.value == null
                ? Colors.black.withOpacity(.23)
                : StdColors.primary,
          ),
          labelText: 'Пароль',
          errorText: controller.passwordErrorText.value,
        ),
      ),
    );
  }
}

class _LogInButton extends StatelessWidget {
  final AuthController authController;

  const _LogInButton({required this.authController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: StdColors.primary,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
        onPressed: authController.logIn,
        child: const Text('Войти'),
      ),
    );
  }
}

class _Contacts extends StatelessWidget {
  const _Contacts({Key? key}) : super(key: key);

  Future<void> _launch(String url) async => await canLaunchUrl(Uri.parse(url))
      ? await launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalNonBrowserApplication,
        )
      : Get.showSnackbar(
          const GetSnackBar(message: 'Текст скопирован в буфер обмена'),
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: Indents.x * 2,
        left: Indents.x,
        right: Indents.x,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Divider(color: StdColors.border24),
          const SizedBox(height: Indents.x * 2),
          const Text(
            'Проблемы со входом?\nНапишите нам о них сюда и мы поможем:',
            style: TextStyle(color: Grey.g68),
          ),
          const SizedBox(height: Indents.y),
          InkWell(
            onTap: () {
              Clipboard.setData(const ClipboardData(text: 'mikhailsouchkov'));
              _launch('https://t.me/mikhailsouchkov');
            },
            child: Row(
              children: [
                const Icon(Icons.telegram),
                Text('mikhailsouchkov', style: Get.textTheme.bodyMedium),
              ],
            ),
          ),
          const SizedBox(height: Indents.internal),
          InkWell(
            onTap: () {
              Clipboard.setData(
                const ClipboardData(text: 'suchkov.ms@hc-avangard.com'),
              );
              _launch('mailto:suchkov.ms@hc-avangard.com');
            },
            child: Row(
              children: [
                const Icon(Icons.email_rounded),
                Text(
                  'suchkov.ms@hc-avangard.com',
                  style: Get.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
