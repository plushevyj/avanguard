import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import 'widgets/custom_switch.dart';
import 'widgets/custom_text_field.dart';
import 'settings_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const route = '/auth';

  @override
  Widget build(BuildContext context) {
    final c = Get.put(SettingsController(), permanent: true); // todo remove
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black.withOpacity(.4),
            size: 16,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Настройки',
          style: Get.textTheme.bodyLarge?.apply(color: Grey.g68),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: Indents.x,
          top: Indents.y,
          right: Indents.x,
        ),
        child: Form(
          key: c.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Личные данные', style: Get.textTheme.titleMedium),
              const SizedBox(height: Indents.y),
              CustomTextField(
                label: 'Имя',
                controller: c.firstName,
                validator: c.nameValidator,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                label: 'Фамилия',
                controller: c.lastName,
                validator: c.nameValidator,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                label: 'Телефон',
                controller: c.phone,
                validator: c.phoneValidator,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                label: 'E-mail',
                controller: c.email,
                validator: c.emailValidator,
              ),
              const SizedBox(height: Indents.y),
              _LogInButton(authController: c),
              Container(
                width: double.infinity,
                height: 1,
                margin: const EdgeInsets.symmetric(vertical: Indents.y),
                color: StdColors.border24,
              ),
              Text('Уведомления', style: Get.textTheme.titleMedium),
              const SizedBox(height: Indents.internal * 1.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Push-уведомления'),
                  CustomSwitch(
                    isOn: false,
                    onToggle: (_) {},
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 1,
                margin: const EdgeInsets.symmetric(vertical: Indents.y),
                color: StdColors.border24,
              ),
              Text('Пароль', style: Get.textTheme.titleMedium),
              const SizedBox(height: Indents.x),
              const Text('Последнее изменение 10.12.22'),
              const SizedBox(height: Indents.x),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: StdColors.primary.withOpacity(.15),
                    foregroundColor: StdColors.primary.shade700,
                    textStyle: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {},
                  child: const Text('Изменить пароль'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LogInButton extends StatelessWidget {
  final SettingsController authController;

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
        child: const Text('Сохранить изменения'),
      ),
    );
  }
}
