import 'package:flutter/material.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isHidden;
  final bool isEnabled;
  final TextEditingController controller;

  const CustomTextField(
      {Key? key,
      required this.label,
      this.isHidden = false,
      this.isEnabled = true,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: textFieldLabelStyle),
        const Gap(10),
        TextField(
            enabled: isEnabled,
            controller: controller,
            obscureText: isHidden,
            enableSuggestions: false,
            autocorrect: false,
            cursorColor: Colors.white,
            style: const TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                enabledBorder: formFieldBorder,
                focusedBorder: formFieldBorder,
                disabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none))),
      ],
    );
  }
}
