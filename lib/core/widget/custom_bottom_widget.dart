import 'package:flutter/material.dart';

class CustomBottomWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final Color? textColor;
  final Color? colorContainer;

  const CustomBottomWidget({
    super.key,
    required this.title,
    required this.onPressed,
    required this.textColor,
    required this.colorContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorContainer, borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width * .8,
      height: 70,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
