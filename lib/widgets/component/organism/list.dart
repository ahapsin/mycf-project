import 'package:flutter/material.dart';
import 'package:mycf/widgets/item_visit.dart';

class ListStyled extends StatelessWidget {
  const ListStyled({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(14), children: [
      HItemVisit(),
      HItemVisit(),
      HItemVisit(),
      HItemVisit(),
      HItemVisit(),
      HItemVisit(),
      HItemVisit(),
      HItemVisit(),
      HItemVisit(),
      HItemVisit(),
    ]);
  }
}
