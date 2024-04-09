import 'package:flutter/material.dart';

import '../../customization/std_colors.dart';

class SelectWidget extends StatelessWidget {
  final Iterable data;
  final Function(dynamic) onChosen;
  final dynamic value;
  final Widget Function(dynamic)? child;
  final String? labelText;
  final Function(dynamic)? getter;

  const SelectWidget({
    required this.data,
    required this.onChosen,
    required this.value,
    this.child,
    this.labelText,
    this.getter,
    Key? key,
  })  : assert(data is Iterable<String> || getter != null || child != null),
        super(key: key);

  Widget childView(item) {
    if (child == null) {
      return getter == null ? Text(item) : (Text(getter!(item)));
    }
    return child!(item);
  }

  List<DropdownMenuItem<Object>> _buildItems() => data
      .map((item) => DropdownMenuItem(
            value: item,
            child: childView(item),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    if (labelText == null) {
      return DropdownButtonFormField(onChanged: onChosen, items: _buildItems());
    }
    return InputDecorator(
      decoration: InputDecoration(
        labelStyle: StdStyles.labelStyle,
        labelText: labelText,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: Indents.internal),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: getter == null ? value : getter!(value),
          onChanged: onChosen,
          items: _buildItems(),
        ),
      ),
    );
  }
}
