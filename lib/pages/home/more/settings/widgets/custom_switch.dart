import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  final bool isOn;
  final Function(bool) onToggle;

  const CustomSwitch({required this.isOn, required this.onToggle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      toggleSize: 14,
      padding: 3,
      activeColor: const Color(0xFFB90D1C),
      width: 38,
      height: 20,
      value: isOn,
      onToggle: onToggle,
    );
  }
}
