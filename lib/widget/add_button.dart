import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:freelance/const/constants.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Card(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Do you want to apply for this job ?',
                  style: TextStyle(color: Colors.amber),
                ),
              ),
              //  DividerWidget(),
              SizedBox(
                height: 13,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    AwesomeDialog(
                      dialogBackgroundColor: KPrimaryColor,
                      btnOkColor: Colors.black38,
                      btnCancelColor: Colors.black38,
                      context: context,
                      dialogType: DialogType.info,
                      animType: AnimType.rightSlide,
                      title: 'Apply Naw',
                      desc: 'Apply for this job.............',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    )..show();
                  },
                  color: KPrimaryColor,
                  child: Text(
                    ' Eyse Apply Now',
                    style: TextStyle(
                      color: SecondColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
