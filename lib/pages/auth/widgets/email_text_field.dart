import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../customization/std_colors.dart';

class EmailTextField extends StatelessWidget {
  final c;

  const EmailTextField(this.c, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        controller: c.email,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.23)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.23)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: StdColors.primary),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: StdColors.primary),
          ),
          labelStyle: TextStyle(
            color: c.emailErrorText.value == null
                ? Colors.black.withOpacity(.23)
                : StdColors.primary,
          ),
          errorText: c.emailErrorText.value,
          labelText: 'E-mail',
        ),
      ),
    );
  }
}
