import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Widget? prefixIcon;
  final String? labelText;
  const CustomTextFieldWidget({
    super.key,
    required TextEditingController controller,
    required this.prefixIcon,
    required this.labelText,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: labelText,

          prefixIcon: prefixIcon, // أيقونة في البداية
        ),
      ),
    );
  }
}
