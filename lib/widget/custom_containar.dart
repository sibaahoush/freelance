import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.icon, required this.title, required this.text});
  final IconData icon;
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.grey.withOpacity(.04),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: 14,
            color: Color.fromARGB(255, 13, 51, 82),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 11,
                color: Color.fromARGB(255, 87, 86, 86),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 70,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 14,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
