import 'package:flutter/material.dart';
import 'package:freelance/const/constants.dart';
import 'package:freelance/pages/searcher_page.dart';

class Searcher extends StatelessWidget {
  const Searcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearcherPage.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          color: Colors.black12,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.grey,
                    ), // Border.all
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'images/FB_IMG_1660594788163.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 1,
                  height: 55,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 13,
                ),
                Column(
                  children: [
                    Text(
                      'Searcher name',
                      style: TextStyle(
                          color: SecondColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      'Work name',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
