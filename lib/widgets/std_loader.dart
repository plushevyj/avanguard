import 'package:flutter/material.dart';

class StdLoader extends StatelessWidget {
  const StdLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}
