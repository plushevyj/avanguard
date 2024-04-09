import 'package:flutter/material.dart';

import '../../customization/std_colors.dart';

class Button extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final Widget? child;

  const Button({
    required this.onTap,
    this.text,
    this.child,
    this.buttonColor = ButtonColor.primary,
    Key? key,
  })  : assert(child != null || text != null, 'Must provide child or text'),
        super(key: key);

  final ButtonColor buttonColor;

  @override
  Widget build(BuildContext context) {
    return switch (buttonColor) {
      ButtonColor.primary => ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return StdColors.primary.shade100.withOpacity(.3);
              } else if (states.contains(MaterialState.focused)) {
                return StdColors.primary.shade700;
              }
              return StdColors.primary;
            }),
          ),
          child: child ?? Text(text!, style: const TextStyle(fontSize: 13)),
        ),
      ButtonColor.secondary => ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return StdColors.primary.withOpacity(.4 * .15);
              } else if (states.contains(MaterialState.focused)) {
                return StdColors.primary.withOpacity(.5);
              }
              return StdColors.primary.shade100;
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return StdColors.primary.shade700.withOpacity(.4);
              }
              return StdColors.primary.shade700;
            }),
          ),
          child: child ?? Text(text!, style: const TextStyle(fontSize: 13)),
        ),
      ButtonColor.third => ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return Grey.g12.withOpacity(.4);
              } else if (states.contains(MaterialState.focused)) {
                return StdColors.border24;
              }
              return Grey.g12;
            }),
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.disabled)) {
                return StdColors.textColor.withOpacity(.4);
              }
              return StdColors.textColor;
            }),
          ),
          child: child ?? Text(text!, style: const TextStyle(fontSize: 13)),
        ),
    };
  }
}

enum ButtonColor { primary, secondary, third }
