import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAuthBottom extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final TextStyle? style;
  const CustomAuthBottom({
    super.key,
    required this.title,
    this.onPressed,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: style,
      ),
    );
  }
}
