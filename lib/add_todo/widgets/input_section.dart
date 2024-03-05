import 'package:flutter/material.dart';

class InputSection extends StatelessWidget {
  InputSection(
      {Key? key,
      required this.controller,
      required this.labelText,
      this.readOnly = false,
      required this.style})
      : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final bool readOnly;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextFormField(
        style: style,
        controller: controller,
        readOnly: readOnly,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
