import 'package:flutter/material.dart';
import 'package:freelance/widget/jobs_list_view_item.dart';

class JobslistView extends StatelessWidget {
  const JobslistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        // itemCount: state is NotescubitSuccess ? state.notes.length:0,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              child: JobslistViewItem2());
        });
  }
}
