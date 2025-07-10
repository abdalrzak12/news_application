import 'package:flutter/material.dart';

class TextFromFieldComponent extends StatelessWidget {
  const TextFromFieldComponent({
    super.key,
    required TextEditingController controller,
    required this.hintText,
    this.icon,
    required this.validator,
  }) : controller = controller;

  final TextEditingController controller;
  final String hintText;
  final Widget? icon;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
        prefixIcon: icon,
      ),
      validator: validator,
    );
  }
}
