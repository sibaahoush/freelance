import 'package:flutter/material.dart';
import 'package:freelance/const/constants.dart';
import 'package:freelance/widget/divider_widget.dart';

class SearcherPage extends StatelessWidget {
  static String id = 'Searcher Page';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [KPrimaryColor, SecondColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.2, 0.9])),
      child: Center(
          child: Card(
        color: Colors.black12,
        child: Padding(
          padding: EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: SecondColor,
                  )),
              Text(''),
              DividerWidget()
            ],
          ),
        ),
      )),
    );
  }
}
