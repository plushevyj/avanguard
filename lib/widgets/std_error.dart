import 'package:flutter/material.dart';

class StdError extends StatelessWidget {
  final String error;

  const StdError(this.error, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(error);
  }
}
