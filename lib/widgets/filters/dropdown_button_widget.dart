import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../customization/std_colors.dart';

class DropdownButtonWidget extends StatelessWidget {
  final Map<String, String>? mapItems;
  final List<String>? items;
  final String value;
  final Function(String) onChosen;
  final String labelText;

  const DropdownButtonWidget({
    this.mapItems,
    this.items,
    required this.value,
    required this.onChosen,
    required this.labelText,
    Key? key,
  })  : assert(mapItems != null || items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelStyle: StdStyles.labelStyle,
        labelText: labelText,
        contentPadding: const EdgeInsets.symmetric(
            horizontal: Indents.internal, vertical: Indents.internal / 2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: value,
          onChanged: (String? v) => onChosen(v!),
          items: (items ?? mapItems?.keys)!
              .map((String item) => DropdownMenuItem(
                    value: item,
                    child: SizedBox(
                      width: Get.width * .7,
                      child: Column(
                        children: [
                          Expanded(
                            child: Text(
                              item,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
