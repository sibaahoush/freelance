import 'package:flutter/material.dart';
import 'package:freelance/const/constants.dart';
import 'package:freelance/widget/date.dart';
import 'package:freelance/widget/date_widget.dart';
import 'package:freelance/widget/persistent.dart';
import 'package:freelance/widget/salary.dart';
import 'package:freelance/widget/text_from_widget.dart';
import 'package:freelance/widget/text_titles_widget.dart';
import 'package:freelance/widgets/bottom_nav_bar.dart';

class AddPage extends StatefulWidget {
  static String id = 'AddPage';

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _jobCategoryController =
      TextEditingController(text: 'Select Job Category');
  final TextEditingController _salaryController =
      TextEditingController(text: 'Select Salary Area');
  final TextEditingController _jobTitleController = TextEditingController();
  final TextEditingController _jobDescriptionController =
      TextEditingController();
  final TextEditingController _deadlineController =
      TextEditingController(text: 'Job Deadline Date');

  final _formKey = GlobalKey<FormState>();
  final bool _isloading = false;
  DateTime? picked;
  _showTaskCategoriesDialog({required Size size}) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: KPrimaryColor,
          title: const Text(
            'Job Category',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: SecondColor),
          ),
          content: Container(
            width: size.width * 0.9,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: Persistent.jobCategoryList.length,
                itemBuilder: (ctx, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _jobCategoryController.text =
                            Persistent.jobCategoryList[index];
                      });
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: SecondColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.8),
                          child: Text(
                            Persistent.jobCategoryList[index],
                            style: const TextStyle(
                                color: SecondColor, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.canPop(context) ? Navigator.pop(context) : null;
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _salary({required Size size}) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: KPrimaryColor,
          title: const Text(
            'Jop Salary',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: SecondColor),
          ),
          content: Container(
            width: size.width * 0.9,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: Salary.SalaryList.length,
                itemBuilder: (ctx, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _salaryController.text = Salary.SalaryList[index];
                      });
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: SecondColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.8),
                          child: Text(
                            Salary.SalaryList[index],
                            style: const TextStyle(
                                color: SecondColor, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.canPop(context) ? Navigator.pop(context) : null;
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // void _pickDateDialog() async {
  //   picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime.now().subtract(
  //       Duration(days: 0),
  //     ),
  //     lastDate: DateTime(2100),
  //   );
  //   if (picked != null) {
  //     setState(() {
  //       _deadlineController.text = '${picked!.year}-${picked!.month}-${picked!.month}';
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [KPrimaryColor, SecondColor],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.2, 0.9])),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarForApp(IndexNum: 1),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Add Job',
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(0.7),
            child: Card(
              color: ThirdColor,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(0.8),
                        child: Text(
                          'Please fill all fields',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Pacifico',
                              fontSize: 40,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextTitlesWidget(Label: 'Jop Category :'),
                              TextFormFildWidget(
                                  valueKey: 'JobCategory',
                                  controller: _jobCategoryController,
                                  enabled: false,
                                  fct: () {
                                    _showTaskCategoriesDialog(size: size);
                                  },
                                  maxLength: 100),
                              TextTitlesWidget(Label: 'Job Title :'),
                              TextFormFildWidget(
                                  valueKey: 'JobTitle',
                                  controller: _jobTitleController,
                                  enabled: true,
                                  fct: () {},
                                  maxLength: 100),
                              TextTitlesWidget(Label: 'Job Description :'),
                              TextFormFildWidget(
                                  valueKey: 'JobDescription',
                                  controller: _jobDescriptionController,
                                  enabled: true,
                                  fct: () {},
                                  maxLength: 500),
                              TextTitlesWidget(Label: 'Skills :'),
                              TextFormFildWidget(
                                  valueKey: 'Skills',
                                  controller: _jobDescriptionController,
                                  enabled: true,
                                  fct: () {},
                                  maxLength: 500),
                              TextTitlesWidget(Label: 'Salary Area :'),
                              TextFormFildWidget(
                                  valueKey: 'SalaryArea',
                                  controller: _salaryController,
                                  enabled: false,
                                  fct: () {
                                    _salary(size: size);
                                  },
                                  maxLength: 100),
                              TextTitlesWidget(Label: 'Job Deadline date :'),
                              // TextFormFildWidget(
                              //     valueKey: 'Deadline',
                              //     controller: _deadlineController,
                              //     enabled: false,
                              //     fct: () {},
                              //     maxLength: 100),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Expanded(child: PickDateWidget()),
                              ),
                              // DateWidget(),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 30, top: 20),
                                  child: _isloading
                                      ? const CircularProgressIndicator()
                                      : MaterialButton(
                                          onPressed: () {},
                                          color: Colors.black,
                                          elevation: 8,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(13),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 14),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Post Now',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: 'Pacifico',
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 9,
                                                ),
                                                Icon(
                                                  Icons.upload_file,
                                                  color: SecondColor,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
