import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:freelance/const/constants.dart';
import 'package:freelance/pages/add_page.dart';
import 'package:freelance/pages/balance.dart';
import 'package:freelance/pages/home_page.dart';

class BottomNavigationBarForApp extends StatelessWidget {
  int IndexNum = 0;
  BottomNavigationBarForApp({required this.IndexNum});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: KPrimaryColor,
      backgroundColor: SecondColor,
      buttonBackgroundColor: KPrimaryColor,
      height: 50,
      index: IndexNum,
      items: const [
        Icon(
          Icons.list,
          size: 19,
          color: Colors.black,
        ),
        Icon(
          Icons.add,
          size: 19,
          color: Colors.black,
        ),
        Icon(
          Icons.account_balance_wallet,
          size: 19,
          color: Colors.black,
        ),
      ],
      animationDuration: const Duration(
        milliseconds: 300,
      ),
      animationCurve: Curves.bounceInOut,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushNamed(context, HomePage.id);
        } else if (index == 1) {
          Navigator.pushNamed(context, AddPage.id);
        } else if (index == 2) {
          Navigator.pushNamed(context, BalancePage.id);
        }
      },
    );
  }
}
