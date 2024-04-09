import 'package:flutter/material.dart';

class ResetTextButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ResetTextButton({this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: const Text(
        'Сбросить',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          height: 14 / 13,
        ),
      ),
    );
  }
}
