import 'package:flutter/material.dart';
import 'package:freelance/pages/add_page.dart';
import 'package:freelance/pages/balance.dart';
import 'package:freelance/pages/home_page.dart';
import 'package:freelance/pages/information_job.dart';
import 'package:freelance/pages/searcher_page.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        AddPage.id: (context) => AddPage(),
        BalancePage.id: (context) => BalancePage(),
        InformationJob.id: (context) => InformationJob(),
        SearcherPage.id: (context) => SearcherPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
