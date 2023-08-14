import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  AuthTextField({
    super.key,
    this.onChanged,
    this.hintText,
    this.validator,
    TextEditingController? controller,
    this.prefixIcon,
  });

  String? hintText;
  final Widget? prefixIcon;

  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
          color: Colors.grey[200],
          child: TextFormField(
            validator: validator,
            onTapOutside: (event) => FocusManager.instance.primaryFocus,
            onChanged: onChanged,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              border: OutlineInputBorder(),
              fillColor: Colors.white54,
              hintText: hintText,
              prefixIcon: prefixIcon,
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding: const EdgeInsets.only(bottom: 15),
              focusColor: Colors.white60,
            ),
          )),
    );
  }
}
