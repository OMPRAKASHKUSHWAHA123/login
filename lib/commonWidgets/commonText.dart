import 'package:flutter/material.dart';

class CommonText extends StatefulWidget {
  final String text;
  Color? textColor = const Color(0xff222222);
  double? size;

  CommonText({super.key, required this.text, this.size, this.textColor});

  @override
  State<CommonText> createState() => _CommonTextState();
}

class _CommonTextState extends State<CommonText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: widget.size,
          color: widget.textColor),
    );
  }
}
