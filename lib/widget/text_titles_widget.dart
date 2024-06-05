import 'package:flutter/material.dart';

class TextTitlesWidget extends StatelessWidget {
  TextTitlesWidget({required this.Label});
  final String Label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        Label,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
