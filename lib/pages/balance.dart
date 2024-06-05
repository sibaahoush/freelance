import 'package:flutter/material.dart';
import 'package:freelance/const/constants.dart';
import 'package:freelance/widget/balance_widget.dart';
import 'package:freelance/widgets/bottom_nav_bar.dart';

class BalancePage extends StatelessWidget {
  static String id = 'BalancePage';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [KPrimaryColor, SecondColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.2, 0.9])),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarForApp(IndexNum: 2),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Available Balance ',
            style: TextStyle(
              fontFamily: 'Pacifico',
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [SecondColor, KPrimaryColor],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.2, 0.9]))),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 24),
                    child: Text(
                      'Hive Balance :',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  BalanceWidget(
                      Text1: 'From canceled orders',
                      Text2: '0\$',
                      Text3: 'Use for purchases'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 24),
                    child: Text(
                      'Hive Credits :',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  BalanceWidget(
                      Text1: 'Credits',
                      Text2: '0\$',
                      Text3: 'Use for purchases'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
