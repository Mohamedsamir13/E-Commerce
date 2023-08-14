import 'package:flutter/material.dart';

class ProfileTextfield extends StatefulWidget {
  ProfileTextfield({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.sufixIcon,
    this.labelText,
    this.errorText,
  }) : super(key: key);
  final String hintText;
  final Widget prefixIcon;
  final Widget? sufixIcon;
  final String? labelText;
  final String? errorText;

  @override
  State<ProfileTextfield> createState() => _ProfileTextfieldState();
}

class _ProfileTextfieldState extends State<ProfileTextfield> {
  final TextEditingController controller = TextEditingController();
  String? error;

  void validateField(String value) {
    if (value.isEmpty) {
      setState(() {
        error = 'Please enter ${widget.labelText!.toLowerCase()}';
      });
    } else {
      setState(() {
        error = null;
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        onTapOutside: (event) => FocusManager.instance.primaryFocus,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          fillColor: Colors.grey,
          prefixIcon: widget.prefixIcon,
          labelText: widget.labelText,
          errorText: widget.errorText ?? error,
          hintText: widget.hintText,
          suffixIcon: widget.sufixIcon,
          focusColor: Colors.white60,
        ),
        onChanged: validateField,

      ),
    );
  }
}
