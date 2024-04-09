import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowTop5 extends StatefulWidget {
  const ShowTop5({Key? key}) : super(key: key);

  @override
  State<ShowTop5> createState() => _ShowTop5State();
}

class _ShowTop5State extends State<ShowTop5> {
  late bool isOn;

  @override
  void initState() {
    super.initState();
    isOn = false;
  }

  void change(bool? value) {
    setState(() {
      if (value != null) isOn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: isOn, onChanged: change),
        Text('Показывать топ-5', style: Get.textTheme.bodyLarge),
      ],
    );
  }
}
