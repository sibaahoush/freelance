import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:freelance/widget/add_button.dart';
import 'package:freelance/widget/divider_widget.dart';
import 'package:freelance/widget/searcher_list.dart';
import 'package:freelance/widget/searcher_widget.dart';

import '../const/constants.dart';

class InformationJob extends StatelessWidget {
  const InformationJob({Key? key}) : super(key: key);
  static String id = 'InformationJob';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [KPrimaryColor, SecondColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.1, 0.9999])),
      child: Scaffold(
          // bottomNavigationBar: BottomNavigationBarForApp(IndexNum: 0),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            // title: const Text(
            //   ' Information Job ',
            //   style: TextStyle(
            //     fontFamily: 'Pacifico',
            //   ),
            // ),
            centerTitle: true,
            flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [SecondColor, KPrimaryColor],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.2, 0.9]))),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Card(
                    color: Colors.black12,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Center(
                              child: Text(
                                'Job Titile',
                                maxLines: 3,
                                style: TextStyle(
                                    color: SecondColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Pacifico',
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Job Category',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: SecondColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'location job',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                DividerWidget(),
                                Text(
                                  'Job Description',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: SecondColor,
                                  ),
                                ),
                                Text(
                                  'Any descriptio you want it can you write it there',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                DividerWidget(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Salary ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: SecondColor,
                                      ),
                                    ),
                                    Text(
                                      '2500 _ 3000 \$',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    DividerWidget(),
                                    Text(
                                      'Skills ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: SecondColor,
                                      ),
                                    ),
                                    Text(
                                      'Engineer.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    DividerWidget(),
                                    Text(
                                      'Job Deadline date ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: SecondColor,
                                      ),
                                    ),
                                    Text(
                                      '7/7/2024',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    DividerWidget(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '5',
                                          style: TextStyle(
                                            color: SecondColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          'Applicants',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.how_to_reg_sharp,
                                          color: SecondColor,
                                        )
                                      ],
                                    ),
                                    DividerWidget(),
                                    // Center(
                                    //   child: MaterialButton(
                                    //     onPressed: () {
                                    // AwesomeDialog(
                                    //   context: context,
                                    //   dialogType: DialogType.info,
                                    //   animType: AnimType.rightSlide,
                                    //   title: 'Apply Naw',
                                    //   desc:
                                    //       'Dialog description here.............',
                                    //   btnCancelOnPress: () {},
                                    //   btnOkOnPress: () {},
                                    // )..show();
                                    //     },
                                    //     color: KPrimaryColor,
                                    //   ),
                                    // )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                AddButton(),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Card(color: Colors.black12, child: SearcherList()),
                )
              ],
            ),
          )),
    );
  }
}
