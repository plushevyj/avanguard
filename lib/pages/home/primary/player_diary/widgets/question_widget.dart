import 'package:flutter/material.dart';

import '../../../../../customization/std_colors.dart';

class QuestionWidget extends StatefulWidget {
  final List<String> options;
  final ValueChanged<int?> onOptionSelected;

  const QuestionWidget(this.options, {required this.onOptionSelected, Key? key})
      : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int? answer;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: widget.options.length,
      itemBuilder: (ctx, i) => GestureDetector(
        onTap: () {
          setState(() => answer = i);
          widget.onOptionSelected(answer == null ? null : answer! + 1);
        },
        child: Container(
          constraints: const BoxConstraints(minHeight: 60),
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: Indents.x / 2),
          padding: const EdgeInsets.all(Indents.internal),
          decoration: BoxDecoration(
            color: const Color(0xFFFEFEFE),
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: const Color(0xFFE0E0E0),
              width: 1.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(widget.options[i], style: Inter.caption)),
              SizedBox(
                height: 10,
                child: Radio(
                  value: i,
                  groupValue: answer,
                  onChanged: (int? value) {
                    setState(() => answer = value);
                    widget
                        .onOptionSelected(answer == null ? null : answer! + 1);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
