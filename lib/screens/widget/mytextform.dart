import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final bool? isTextObscured;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final IconData? icon;

  const MyCustomTextField(
      {Key? key,
      this.textEditingController,
      this.isTextObscured = false,
      this.hintText,
      this.validator,
      this.icon,
      this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: textEditingController,
      validator: validator,
      obscureText: isTextObscured!,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0.0),
        ),
        hintText: hintText,
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal)),
      ),
    );
  }
}
