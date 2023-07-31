import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      this.errorText,
      this.onChanged,
      this.isPass = false,
      this.inputType = TextInputType.emailAddress});
  final String label;
  final String? errorText;
  final void Function(String)? onChanged;
  final bool isPass;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: inputType,
      obscureText: isPass,
      style: const TextStyle(fontSize: 22),
      decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.2),
          filled: true,
          label: Text(label),
          errorText: errorText,
          errorStyle: const TextStyle(fontSize: 16),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(8)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(8))),
    );
  }
}
