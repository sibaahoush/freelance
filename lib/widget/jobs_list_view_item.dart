import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:freelance/pages/information_job.dart';

import 'package:freelance/widget/custom_containar.dart';

class JobslistViewItem2 extends StatelessWidget {
  const JobslistViewItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, InformationJob.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white10,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    'Job Title ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 42),
                    child: Text(
                      'May 21 2022',
                      style: TextStyle(color: Colors.black.withOpacity(.5)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomContainer(
                  icon: FontAwesomeIcons.briefcase,
                  title: 'Job category',
                  text: 'Programming/Informatics engineer'),
            ),
            const Divider(
              indent: 50,
              endIndent: 50,
              color: Colors.grey,
              thickness: .6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomContainer(
                  icon: FontAwesomeIcons.moneyBill,
                  title: 'Salary Area',
                  text: '1000 _1500\$'),
            ),
            const Divider(
              indent: 50,
              endIndent: 50,
              color: Colors.grey,
              thickness: .6,
            ),
          ]),
        ),
      ),
    );
  }
}
