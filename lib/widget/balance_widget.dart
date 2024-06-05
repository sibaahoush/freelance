import 'package:flutter/material.dart';
import 'package:freelance/widget/divider_widget.dart';

class BalanceWidget extends StatelessWidget {
  BalanceWidget(
      {required this.Text1, required this.Text2, required this.Text3});
  final String Text1;
  final String Text2;
  final String Text3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 12),
              child: Text(
                Text1,
                style: TextStyle(
                    color: const Color.fromARGB(255, 112, 112, 112),
                    fontWeight: FontWeight.bold),
              ),
            ),
            DividerWidget(),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                Text2,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ),
            DividerWidget(),
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 12),
              child: Text(
                Text3,
                style: TextStyle(
                  color: const Color.fromARGB(255, 112, 112, 112),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
