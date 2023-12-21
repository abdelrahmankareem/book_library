import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hint,
      required this.label,
      this.onChanged,
      required this.obsecure});
  final String? hint;
  final String? label;
  final void Function(String)? onChanged;
  final bool obsecure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        obscureText: obsecure,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This Field IS required';
          }
          {
            return null;
          }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.black),
          labelText: label,
          hintText: hint,
          hintStyle:
              const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
