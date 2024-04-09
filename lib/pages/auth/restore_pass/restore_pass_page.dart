import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../customization/std_colors.dart';
import '../widgets/email_text_field.dart';
import 'restore_pass_controller.dart';

class RestorePassPage extends StatelessWidget {
  const RestorePassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(RestorePassController());
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black.withOpacity(.4),
            size: 16,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Восстановление пароля',
          style: Get.textTheme.bodyLarge?.apply(color: Grey.g68),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: Indents.x, top: 81, right: Indents.x),
        child: Obx(
          () => Column(
            children: [
              c.isSent.isFalse
                  ? const Text(
                      'Ссылка для сброса пароля\nбудет отправлена на вашу электронную почту',
                      textAlign: TextAlign.center,
                    )
                  : const Text(
                      'Ссылка для сброса пароля отправлена на вашу электронную почту.'
                      '\n\nЕсли вы не увидели письмо на своей электронной почте, проверьте папку «Спам».',
                      textAlign: TextAlign.center,
                    ),
              if (c.isSent.isFalse) ...[
                const SizedBox(height: 25),
                EmailTextField(c),
                const SizedBox(height: Indents.x * 2),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    // ignore: avoid-passing-async-when-sync-expected
                    onPressed: c.restorePass,
                    child: const Text('Отправить'),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
