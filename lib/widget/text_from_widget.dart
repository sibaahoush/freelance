import 'package:flutter/material.dart';
import 'package:freelance/const/constants.dart';

class TextFormFildWidget extends StatelessWidget {
  TextFormFildWidget({
    required this.valueKey,
    required this.controller,
    required this.enabled,
    required this.fct,
    required this.maxLength,
  });
  final String valueKey;
  final TextEditingController controller;
  final bool enabled;
  final Function fct;
  final int maxLength;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          fct();
        },
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Value is missing';
            }
            return null;
          },
          controller: controller,
          enabled: enabled,
          key: ValueKey(valueKey),
          style: TextStyle(color: SecondColor),
          maxLines: valueKey == 'JobDescription' ? 4 : 1,
          maxLength: maxLength,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black54,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red))),
        ),
      ),
    );
  }
}
