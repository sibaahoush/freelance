import 'package:flutter/material.dart';
import 'package:freelance/const/constants.dart';
import 'package:freelance/widget/jobs_list_view.dart';
import 'package:freelance/widget/jobs_list_view_item.dart';
import 'package:freelance/widgets/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        bottomNavigationBar: BottomNavigationBarForApp(IndexNum: 0),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Jobs screen',
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 236, 238, 238),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(70.0)),
                    hintText: 'search...',
                  ),
                ),
              ),
              JobslistView(),
            ],
          ),
        ),
      ),
    );
  }
}
