import 'package:flutter/material.dart';
import 'package:freelance/widget/searcher_widget.dart';

class SearcherList extends StatelessWidget {
  const SearcherList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        // itemCount: state is NotescubitSuccess ? state.notes.length:0,
        itemBuilder: (context, index) {
          return Padding(padding: EdgeInsets.all(3.0), child: Searcher());
        });
  }
}
